#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# @audio
rpm-ostree install a2jmidid alsa-firmware alsa-plugins-samplerate alsa-plugins-upmix alsa-plugins-usbstream alsa-plugins-vdownmix alsa-tools alsa-utils alsamixergui ams ardour8 arpage audacity calf drumkv1 dssi ffado fluid-soundfont-gm fluidsynth frescobaldi guitarix harmonyseq hydrogen jaaa jack-mixer jack_capture japa jmeters kernel-tools ladspa ladspa-amb-plugins ladspa-autotalent-plugins ladspa-blop-plugins ladspa-cmt-plugins ladspa-fil-plugins ladspa-mcp-plugins ladspa-rev-plugins ladspa-tap-plugins ladspa-vco-plugins lash lilypond lsp-plugins-jack lsp-plugins-ladspa lsp-plugins-lv2 lv2 lv2-abGate lv2-c++-tools lv2-carla lv2-drumkv1 lv2-fabla lv2-ll-plugins lv2-newtonator lv2-samplv1 lv2-sorcer lv2-swh-plugins lv2-synthv1 lv2-vocoder-plugins lv2-x42-plugins lv2-zynadd-plugins lv2dynparam mudita24 multimedia-menus mup muse musescore new-session-manager pavucontrol pipewire-alsa pipewire-jack-audio-connection-kit pipewire-pulseaudio pipewire-utils qastools qjackctl qmidiarp qsynth qtractor rakarrack raysession rosegarden4 samplv1 sbc sooperlooper synthv1 timidity++ tuxguitar vmpk wireplumber yoshimi zita-at1 zita-rev1 zynaddsubfx

# @c-development
rpm-ostree install autoconf automake binutils bison flex gcc gcc-c++ gdb glibc-devel libtool make pkgconf strace byacc ccache cscope ctags elfutils indent ltrace perf valgrind ElectricFence astyle cbmc check cmake coan cproto insight nasm pscan python3-scons remake scorep splint yasm zzuf

# @editors
rpm-ostree install emacs emacs-auctex emacs-bbdb emacs-vm geany jed joe leafpad nano nedit poedit vim-X11 vim-enhanced xmlcopyeditor zile

# @development-tools
rpm-ostree install gettext diffstat doxygen git patch patchutils subversion systemtap buildbot colordiff cvs cvs2cl cvsps darcs dejagnu expect gambas3-ide git-annex git-cola git2cl gitg gtranslator highlight lcov manedit meld monotone myrepos nemiver qgit quilt rapidsvn rcs robodoc scanmem subunit svn2cl tig tortoisehg translate-toolkit utrac

# @development-libs
rpm-ostree install bzip2-devel glibc-devel ncurses-devel pam-devel readline-devel zlib-ng-devel binutils-devel boost-devel cyrus-sasl-devel dbus-devel gmp-devel krb5-devel libacl-devel libattr-devel libcap-devel libcurl-devel libdb-devel libogg-devel libselinux-devel libuser-devel libvorbis-devel libxml2-devel lockdev-devel openldap-devel openssl-devel pciutils-devel pcsc-lite-devel perl-devel python3-devel rpm-devel slang-devel DSDP-devel check-devel expat-devel ffcall gdbm-devel geoclue2-devel gf2x-devel givaro-devel gmp-ecm-devel gpm-devel gssdp-devel gupnp-devel iml-devel libdwarf-devel libedit-devel libusb1-devel linbox-devel m4ri-devel m4rie-devel newt-devel poco-devel poco-doc

# @education
rpm-ostree install blinken cantor corrida drgeo drgeo-doc fantasdic genchemlab glglobe gtypist kalgebra kalzium kanagram kbruch kgeography khangman kig kiten klettres kmplot kstars ktouch kturtle kwordquiz marble moodle parley rocs skychart stellarium step tuxtype2 vmpk

# @authoring-and-publishing
rpm-ostree install docbook-slides docbook-style-dsssl docbook-style-xsl docbook-utils docbook-utils-pdf docbook5-schemas docbook5-style-xsl linuxdoc-tools texlive texlive-cm-lgc texlive-kerkis xhtml1-dtds xmlto BibTool abcm2ps dblatex docbook2X html401-dtds kbibtex kile latexmk lilypond lout ooo2txt pandoc python3-docutils python3-manuel scribus texlive-latex texlive-xdvi txt2rss w3c-markup-validator xmlcopyeditor

# @python-science
rpm-ostree install jupyterlab python3-matplotlib python3-notebook python3-numpy python3-pandas python3-pillow python3-scikit-image python3-scikit-learn python3-scipy python3-statsmodels python3-sympy python3-matplotlib-tk python3-pillow-tk

# @graphics
rpm-ostree install ImageMagick Panini asciio asymptote blender cbrpager dcraw digikam gcolor2 geeqie gifsicle gifview gimp gimp-data-extras gimp-help gnofract4d graphviz gutenprint-plugin gv gwenview hugin inkscape ipe kf5-kipi-plugins kolourpaint kphotoalbum krita libsane-hpaio mirage mtpaint netpbm-progs nip2 optipng pstoedit python3-pydot qiv rawstudio renrot sane-backends-drivers-cameras sane-backends-drivers-scanners sane-frontends shotwell simple-scan spectacle tuxpaint tzclock ufraw viewnior xfig xsane xsane-gimp

#
# rpm-ostree install tmux
#       ansible cachix delta devenv dust eza fzf ncdu ripgrep silver-searcher tldr xsel

# @engineering-and-scientific
rpm-ostree-install R gnuplot gsl gsl-devel maxima octave python3-matplotlib python3-scipy texmaker transfig units wxMaxima xfig 4ti2 E EMBOSS GMT GMT-doc Macaulay2 SIBsim4 TOPCOM TeXmacs alt-ergo alt-ergo-gui atlas azove blas bliss bowtie brial bwa cantor cddlib chemtool coq coq-coqide cryptominisat csdp csdp-tools cvc5 cvc5-devel dx eclib fastx_toolkit fflas-ffpack-devel fityk flint flocq frama-c freefem++ gabedit galculator gap gappa gappalib-coq gdl genius geomview gfan ginac glimmer gnome-chemistry-utils gpredict grace gromacs gromacs-openmpi gshhg-gmt-nc4-full gshhg-gmt-nc4-high gts hdf hdf5 hmmer kst lagan lapack latte-integrale libmatheval libtcd linbox malaga maxima-gui minisat2 molsketch mpfi ncl nco ncview netcdf normaliz openbabel opencv paraview picosat picosat-devel plotutils polymake python3-biopython python3-cvxopt python3-networkx python3-sympy qalculate-gtk qalculate-qt qepcad-B root routino rrdtool scidavis seaview sextractor stp symmetrica tcd-utils tgif tideEditor veusz vinci wgrib wgrib2 why3 wvs-data xdrawchem xgap xtide zenon

# this would install a package from rpmfusion
rpm-ostree install vlc

#### Example for enabling a System Unit File

# systemctl enable podman.socket
