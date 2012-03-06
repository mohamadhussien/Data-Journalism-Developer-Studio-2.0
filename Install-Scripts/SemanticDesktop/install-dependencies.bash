#! /bin/bash -v

sudo zypper --quiet install --no-recommends -y evolution evolution-data-server \
  evolution-webcal MozillaThunderbird evolution-plugin-rss

sudo zypper --quiet install --no-recommends -y tracker tracker-miner-evolution \
  tracker-miner-files tracker-miner-flickr tracker-miner-rss tracker-gui \
  tracker-miner-firefox tracker-miner-thunderbird tracker-devel tracker-lang

sudo zypper --quiet install --no-recommends -y virtuoso-drivers virtuoso-server
