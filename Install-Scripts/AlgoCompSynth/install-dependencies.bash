#! /bin/bash -v

sudo zypper --quiet addrepo -cf http://download.opensuse.org/repositories/multimedia:/apps/openSUSE_12.1/multimedia:apps.repo
sudo zypper --quiet addrepo -cf http://download.opensuse.org/repositories/multimedia:/libs/openSUSE_12.1/multimedia:libs.repo
sudo zypper --quiet addrepo -cf http://download.opensuse.org/repositories/Education/openSUSE_12.1/Education.repo
sudo zypper --quiet refresh

sudo zypper --quiet install --no-recommends -y rosegarden lilypond noteedit
sudo zypper --quiet install --no-recommends -y jack qjackctl
sudo zypper --quiet install --no-recommends -y csound cecilia
sudo zypper --quiet install --no-recommends -y pd-extended
sudo zypper --quiet install --no-recommends -y ardour
sudo zypper --quiet install --no-recommends -y dssi fluidsynth fluidsynth-dssi \
  xsynth-dssi rubberband-cli
sudo zypper --quiet install --no-recommends -y fluid-soundfont-gs
sudo zypper --quiet install --no-recommends -y fluid-soundfont-gm
sudo zypper --quiet install --no-recommends -y hydrogen hydrogen-drumkits
sudo zypper --quiet install --no-recommends -y ZynAddSubFX
sudo zypper --quiet install --no-recommends -y sweep
sudo zypper --quiet install --no-recommends -y snd
sudo zypper --quiet install --no-recommends -y rubberband-ladspa ladspa
sudo zypper --quiet install --no-recommends -y rubberband-vamp vamp-plugin-sdk
