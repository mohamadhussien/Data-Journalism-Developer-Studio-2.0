#! /bin/bash -v

# needed for R audio  packages
sudo zypper --quiet install --no-recommends -y fftw3 fftw3-devel fftw3-threads fftw3-threads-devel

# base pattern
sudo zypper --quiet install --no-recommends -y -t pattern multimedia
sudo zypper --quiet install --no-recommends -y -t pattern multimedia_opt

# audio tools
sudo zypper --quiet install --no-recommends -y yast2-sound
sudo zypper --quiet install --no-recommends -y dvd+rw-tools
sudo zypper --quiet install --no-recommends -y vorbis-tools
sudo zypper --quiet install --no-recommends -y ripit
sudo zypper --quiet install --no-recommends -y abcde
sudo zypper --quiet install --no-recommends -y gstreamer-0_10-plugins-good-extra
sudo zypper --quiet install --no-recommends -y audacity
sudo zypper --quiet install --no-recommends -y timidity pmidi
sudo zypper --quiet install --no-recommends -y flac

# video and animation
sudo zypper --quiet install --no-recommends -y blender
sudo zypper --quiet install --no-recommends -y pitivi
sudo zypper --quiet install --no-recommends -y frei0r-plugins

# document creation
sudo zypper --quiet install --no-recommends -y scribus
sudo zypper --quiet install --no-recommends -y inkscape
sudo zypper --quiet install --no-recommends -y inkscape-extensions-dia
sudo zypper --quiet install --no-recommends -y inkscape-extensions-extra
sudo zypper --quiet install --no-recommends -y inkscape-extensions-fig
sudo zypper --quiet install --no-recommends -y inkscape-extensions-gimp
sudo zypper --quiet install --no-recommends -y inkscape-extensions-skencil
sudo zypper --quiet install --no-recommends -y gimp
sudo zypper --quiet install --no-recommends -y gimp-gap
sudo zypper --quiet install --no-recommends -y gimp-help
sudo zypper --quiet install --no-recommends -y gimp-plugin-lqr
sudo zypper --quiet install --no-recommends -y gimp-plugins-python
sudo zypper --quiet install --no-recommends -y gimp-save-for-web
sudo zypper --quiet install --no-recommends -y gimp-ufraw ufraw
sudo zypper --quiet install --no-recommends -y gutenprint-gimpplugin
