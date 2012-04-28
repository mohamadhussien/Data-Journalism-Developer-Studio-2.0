#! /usr/bin/perl -w
my ($link) = @ARGV;
print "Fetching ${link}\n";
my @fields = split /\//, $link;
my $name = ${fields[5]};
my $sum = ${fields[4]};
my $md5sum = "${sum}  ${name}\n";
system "echo \'${md5sum}\' | head -n 1 > md5";
system "curl -s ${link} > ${name}";
system "md5sum -c md5";
exit;
