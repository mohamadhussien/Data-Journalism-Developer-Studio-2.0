#! /usr/bin/perl -w
# collect most recent tweets for a specified target user ID

use strict;
use warnings;
use English qw(-no_match_vars);
use Carp;

use Net::Twitter;
use YAML::XS;

require TwitterUtilities;

print {*STDERR} 'Enter screen name of Twitter user: ' or
  croak $OS_ERROR;
my $target_screen_name = <>;
chomp $target_screen_name;
my $MAX_TWEET_PAGES = 16;
my $tweet_pages = $MAX_TWEET_PAGES + 1;
while ($tweet_pages > $MAX_TWEET_PAGES or $tweet_pages < 1) {
  print {*STDERR} 'Enter number of pages of tweets (maximum of 16): ' or
    croak $OS_ERROR;
  $tweet_pages = <>; chomp $tweet_pages; $tweet_pages += 0;
}
print {*STDERR} 'Enter \'RT\' if you want retweets included: ' or
  croak $OS_ERROR;
my $retweets_included = <>;

my $json_file = "${target_screen_name}_tweets.json";
print {*STDERR} "\nJSON file \"${json_file}\" will be created.\n" or
  croak $OS_ERROR;
my %object_keys = (); # hash to collect keys seen

# get a Twitter handle
my $handle =
  Net::Twitter->new();

# open output file
open my $JSON, '>:utf8', $json_file or croak $OS_ERROR;

# get all the tweets Twitter is willing to give us
for (my $page=1; $page<=$tweet_pages; $page++) {
  my $error = 1;
  my $tweets;

  while ($error > 0) {
    my $sleep_time = TwitterUtilities::rate_limit_status($handle, 1);
    sleep $sleep_time;
    if ($retweets_included !~ /RT/i) {
      $tweets = eval {
        $handle->user_timeline({screen_name => $target_screen_name,
          include_entities => 'true',
          page => $page, count => 200});
      };
    }
    else {
      $tweets = eval {
        $handle->user_timeline({screen_name => $target_screen_name,
          include_entities => 'true',          
          include_rts => 'true',
          page => $page, count => 200});
      };
    }

    if ($EVAL_ERROR or !defined $tweets) {
      if ($EVAL_ERROR =~ /Not authorized/) { # protected user?
        print {*STDERR} "You are not authorized to view that user.\n";
        exit;
      }

      # not a protected user - retry
      TwitterUtilities::error_wait($handle);
      next;
    }
    else {
      $error = 0;
    }
  }

  my $tweet_count = scalar @{ $tweets };
  print {*STDERR} "page ${page}, ${tweet_count} tweets retrieved\n" or
    croak $OS_ERROR;
  last if $tweet_count < 1;
  for (my $tweet=0; $tweet<$tweet_count; $tweet++) {
    my $hashref = $tweets->[$tweet];
    $hashref = TwitterUtilities::object_flatten($hashref, \%object_keys);
    TwitterUtilities::print_json_data($JSON, $hashref);
  }
}

close $JSON or croak $OS_ERROR;
YAML::XS::DumpFile("headers.yaml",
  \%object_keys);
exit;
