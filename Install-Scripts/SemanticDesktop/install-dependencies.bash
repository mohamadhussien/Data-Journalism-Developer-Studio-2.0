#! /bin/bash -v

sudo zypper --quiet install --no-recommends -y evolution evolution-data-server \
  evolution-webcal MozillaThunderbird

sudo zypper --quiet install --no-recommends -y tracker tracker-miner-evolution \
  tracker-miner-files tracker-miner-flickr tracker-miner-rss tracker-gui \
  tracker-miner-firefox tracker-miner-thunderbird
