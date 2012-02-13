#! /bin/bash -v

# needed for R audio  packages
sudo zypper install --no-recommends -y fftw3 fftw3-devel fftw3-threads fftw3-threads-devel

# base pattern
sudo zypper install --no-recommends -y -t pattern multimedia

# audio tools
sudo zypper install --no-recommends -y yast2-sound
sudo zypper install --no-recommends -y dvd+rw-tools
sudo zypper install --no-recommends -y vorbis-tools
sudo zypper install --no-recommends -y ripit
sudo zypper install --no-recommends -y abcde
sudo zypper install --no-recommends -y gstreamer-0_10-plugins-good-extra
sudo zypper install --no-recommends -y audacity
sudo zypper install --no-recommends -y timidity pmidi
sudo zypper install --no-recommends -y flac

# video and animation
sudo zypper install --no-recommends -y blender blender-doc
sudo zypper install --no-recommends -y pitivi

# document creation
sudo zypper install --no-recommends -y scribus
sudo zypper install --no-recommends -y inkscape
sudo zypper install --no-recommends -y inkscape-extensions-dia
sudo zypper install --no-recommends -y inkscape-extensions-extra
sudo zypper install --no-recommends -y inkscape-extensions-fig
sudo zypper install --no-recommends -y inkscape-extensions-gimp
sudo zypper install --no-recommends -y inkscape-extensions-skencil
sudo zypper install --no-recommends -y gimp
sudo zypper install --no-recommends -y gimp-gap
sudo zypper install --no-recommends -y gimp-help
sudo zypper install --no-recommends -y gimp-plugin-lqr
sudo zypper install --no-recommends -y gimp-plugins-python
sudo zypper install --no-recommends -y gimp-save-for-web
sudo zypper install --no-recommends -y gimp-ufraw ufraw
sudo zypper install --no-recommends -y gutenprint-gimpplugin
sudo zypper install --no-recommends -y calibre
sudo zypper install --no-recommends -y xfce4-screenshooter
