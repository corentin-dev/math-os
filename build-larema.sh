#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

if [ extra = "extra" ]; then
# @c-development
# origin: autoconf automake binutils bison flex gcc gcc-c++ gdb glibc-devel libtool make pkgconf strace byacc ccache cscope ctags elfutils indent ltrace perf valgrind ElectricFence astyle cbmc check cmake coan cproto insight nasm pscan python3-scons remake scorep splint yasm zzuf
# without dx
rpm-ostree install autoconf automake strace byacc cscope ctags indent ltrace perf valgrind ElectricFence astyle cbmc check cmake coan cproto insight nasm pscan python3-scons remake scorep splint yasm zzuf

# @editors
rpm-ostree install emacs emacs-auctex emacs-bbdb emacs-vm geany jed joe leafpad nano nedit poedit vim-X11 vim-enhanced xmlcopyeditor zile

# @development-tools
# origin: gettext diffstat doxygen git patch patchutils subversion systemtap buildbot colordiff cvs cvs2cl cvsps darcs dejagnu expect gambas3-ide git-annex git-cola git2cl gitg gtranslator highlight lcov manedit meld monotone myrepos nemiver qgit quilt rapidsvn rcs robodoc scanmem subunit svn2cl tig tortoisehg translate-toolkit utrac
rpm-ostree install diffstat doxygen patchutils subversion systemtap buildbot colordiff cvs cvs2cl cvsps darcs dejagnu expect gambas3-ide git-annex git-cola git2cl gitg gtranslator highlight lcov manedit meld monotone myrepos nemiver qgit quilt rapidsvn rcs robodoc scanmem subunit svn2cl tig tortoisehg translate-toolkit utrac

# @development-libs
# origin: bzip2-devel glibc-devel ncurses-devel pam-devel readline-devel zlib-ng-devel binutils-devel boost-devel cyrus-sasl-devel dbus-devel gmp-devel krb5-devel libacl-devel libattr-devel libcap-devel libcurl-devel libdb-devel libogg-devel libselinux-devel libuser-devel libvorbis-devel libxml2-devel lockdev-devel openldap-devel openssl-devel pciutils-devel pcsc-lite-devel perl-devel python3-devel rpm-devel slang-devel DSDP-devel check-devel expat-devel ffcall gdbm-devel geoclue2-devel gf2x-devel givaro-devel gmp-ecm-devel gpm-devel gssdp-devel gupnp-devel iml-devel libdwarf-devel libedit-devel libusb1-devel linbox-devel m4ri-devel m4rie-devel newt-devel poco-devel poco-doc
rpm-ostree install bzip2-devel glibc-devel ncurses-devel pam-devel readline-devel zlib-ng-devel binutils-devel boost-devel cyrus-sasl-devel dbus-devel gmp-devel krb5-devel libacl-devel libattr-devel libcap-devel libcurl-devel libdb-devel libogg-devel libselinux-devel libuser-devel libvorbis-devel libxml2-devel lockdev-devel openldap-devel openssl-devel pciutils-devel pcsc-lite-devel perl-devel python3-devel rpm-devel slang-devel DSDP-devel check-devel expat-devel ffcall gdbm-devel geoclue2-devel gf2x-devel givaro-devel gmp-ecm-devel gpm-devel gssdp-devel gupnp-devel iml-devel libdwarf-devel libedit-devel libusb1-devel linbox-devel m4ri-devel m4rie-devel newt-devel poco-devel poco-doc

# @authoring-and-publishing
rpm-ostree install docbook-slides docbook-style-dsssl docbook-style-xsl docbook-utils docbook-utils-pdf docbook5-schemas docbook5-style-xsl linuxdoc-tools texlive texlive-cm-lgc texlive-kerkis xhtml1-dtds xmlto BibTool abcm2ps dblatex docbook2X html401-dtds kbibtex kile latexmk lilypond lout ooo2txt pandoc python3-docutils python3-manuel scribus texlive-latex texlive-xdvi txt2rss w3c-markup-validator xmlcopyeditor

# @python-science
rpm-ostree install jupyterlab python3-matplotlib python3-notebook python3-numpy python3-pandas python3-pillow python3-scikit-image python3-scikit-learn python3-scipy python3-statsmodels python3-sympy python3-matplotlib-tk python3-pillow-tk

# @graphics
rpm-ostree install ImageMagick Panini asciio asymptote blender cbrpager dcraw digikam gcolor2 geeqie gifsicle gifview gimp gimp-data-extras gimp-help gnofract4d graphviz gutenprint-plugin gv gwenview hugin inkscape ipe kf5-kipi-plugins kolourpaint kphotoalbum krita libsane-hpaio mirage mtpaint netpbm-progs nip2 optipng pstoedit python3-pydot qiv rawstudio renrot sane-backends-drivers-cameras sane-backends-drivers-scanners sane-frontends shotwell simple-scan spectacle tuxpaint tzclock ufraw viewnior xfig xsane xsane-gimp

# @system-tools
rpm-ostree install BackupPC NetworkManager-l2tp NetworkManager-libreswan NetworkManager-openconnect NetworkManager-openvpn NetworkManager-vpnc aide aircrack-ng am-utils amanda-client apcupsd apcupsd-gui apg apt arc arj arpwatch autofs avahi-tools bochs bonnie++ cabextract catfish chrony chrpath cifs-utils conman connect-proxy convmv crack crash createrepo_c dar ddclient dkms dtach ed2k_hash eiciel enca environment-modules ettercap fail2ban fatsort fdupes festival foremost freerdp freeze fuse fuse3 fwknop ganglia geoclue2 ghasher ghex gigolo gkrellm gnokii gnutls-utils grepmail grsync gssdp gtkhash gtkterm gupnp gxemul hercules hfsplus-tools htop hyperestraier ibmonitor iftop inadyn-mt incron iotop-c jfbterm john k4dirstat keychain libreswan lirc-compat lzop macchanger mc mediawriter mmv mrtg mtx munin nagios net-snmp-utils nethogs netstat-nat nfswatch nmap noip nomarch nrg2iso ntfs-3g ntpsec nut oddjob oddjob-mkhomedir openconnect openldap-clients openvpn p0f p7zip p7zip-plugins par2cmdline pbzip2 pcp-system-tools powertop procinfo puppet pwgen qdbm qstat radeontool rdesktop rdiff-backup rear remmina remmina-plugins-rdp reptyr rootsh rsnapshot samba-client screen scrub sec setserial shorewall socat speech-dispatcher speech-dispatcher-espeak-ng speech-dispatcher-festival speech-dispatcher-flite stripesnoop swaks swatch syslog-ng sysstat testdisk tigervnc tn5250 torque-client torque-gui tunctl uucp vnstat vpnc wine wireshark x3270-x11 xdelta xmobar xsel zidrav zisofs-tools zsh

# @engineering-and-scientific
rpm-ostree install R gnuplot gsl gsl-devel maxima octave python3-matplotlib python3-scipy texmaker transfig units wxMaxima xfig 4ti2 E EMBOSS GMT GMT-doc Macaulay2 SIBsim4 TOPCOM TeXmacs alt-ergo alt-ergo-gui atlas azove blas bliss bowtie brial bwa cantor cddlib chemtool coq coq-coqide cryptominisat csdp csdp-tools cvc5 cvc5-devel dx eclib fastx_toolkit fflas-ffpack-devel fityk flint flocq frama-c freefem++ gabedit galculator gap gappa gappalib-coq gdl genius geomview gfan ginac glimmer gnome-chemistry-utils gpredict grace gromacs gromacs-openmpi gshhg-gmt-nc4-full gshhg-gmt-nc4-high gts hdf hdf5 hmmer kst lagan lapack latte-integrale libmatheval libtcd linbox malaga maxima-gui minisat2 molsketch mpfi ncl nco ncview netcdf normaliz openbabel opencv paraview picosat picosat-devel plotutils polymake python3-biopython python3-cvxopt python3-networkx python3-sympy qalculate-gtk qalculate-qt qepcad-B root routino rrdtool scidavis seaview sextractor stp symmetrica tcd-utils tgif tideEditor veusz vinci wgrib wgrib2 why3 wvs-data xdrawchem xgap xtide zenon

# @text-internet
rpm-ostree install abook alpine argus aria2 axel cadaver centerim deletemail elinks epic fetchmail fpaste iperf irssi isync lftp libtranslate lynx mailprocessing mutt ncftp nmh offlineimap rss2email rtorrent slrn snownews tftp tin w3m websec whatmask wondershaper youtube-dl

## Extra

# math-base
rpm-ostree install R-BSgenome R-Biobase R-BiocGenerics R-BiocParallel R-Biostrings R-BufferedMatrix R-DBI R-DelayedArray R-DynDoc R-GenomeInfoDb R-GenomeInfoDbData R-GenomicAlignments R-GenomicRanges R-IRanges R-R6 R-RCurl R-RInside R-RM2 R-RODBC R-RSQLite R-RUnit R-Rcpp R-Rcpp-devel R-Rcpp-examples R-Rsamtools R-Rsolid R-S4Vectors R-SummarizedExperiment R-TH-data R-XML R-XVector R-abind R-acepack R-affyio R-backports R-biglm R-biomaRt R-bitops R-broom R-caTools R-car R-combinat R-core R-crayon R-devel R-digest R-expm R-futile.logger R-futile.options R-highlight R-inline R-java R-lambda.r R-libSBML R-littler R-littler-examples R-mAr R-magrittr R-matrixStats R-memoise R-nws R-plogr R-praise R-qcc R-qtl R-qvalue R-rlecuyer R-rtracklayer R-sciplot R-snow R-systemfit R-testthat R-timeDate R-tkWidgets R-wavethresh R-widgetTools R-xtable R-zoo armadillo-devel rstudio rstudio-desktop


# math-extra
rpm-ostree install Macaulay2 Singular cantor cantor-devel freefem++ gap giac giac-xcas gp2c igraph kalgebra kile latexmk pari-gp schroedinger texmaker texstudio wxMaxima

# font extra
rpm-ostree install adobe-source-code-pro-fonts aajohan-comfortaa-fonts abattis-cantarell-fonts dejavu-sans-fonts dejavu-sans-mono-fonts dejavu-serif-fonts google-noto-emoji-color-fonts google-noto-sans-cjk-ttc-fonts google-noto-sans-gurmukhi-fonts google-noto-sans-sinhala-vf-fonts jomolhari-fonts julietaula-montserrat-fonts khmer-os-system-fonts liberation-mono-fonts liberation-sans-fonts liberation-serif-fonts lohit-assamese-fonts lohit-bengali-fonts lohit-devanagari-fonts lohit-gujarati-fonts lohit-kannada-fonts lohit-odia-fonts lohit-tamil-fonts lohit-telugu-fonts paktype-naskh-basic-fonts pt-sans-fonts sil-abyssinica-fonts sil-mingzat-fonts sil-nuosu-fonts sil-padauk-fonts stix-fonts thai-scalable-waree-fonts

# texlive-base
rpm-ostree install texlive-collection-basic texlive-collection-context texlive-collection-fontsrecommended texlive-collection-fontutils texlive-collection-formatsextra texlive-collection-langenglish texlive-collection-langfrench texlive-collection-langother texlive-collection-latex texlive-collection-latexrecommended texlive-collection-pictures texlive-collection-plaingeneric texlive-collection-publishers name: texlive-extra

# texlive-extra
rpm-ostree install texlive-collection-bibtexextra texlive-collection-binextra texlive-collection-fontsextra texlive-collection-formatsextra texlive-collection-langcyrillic texlive-collection-latexextra texlive-collection-mathscience name: office-extra

# office-extra
rpm-ostree install aspell-en aspell-fr bluefish djvulibre emacs-lucid emacs-gtk+x11 emacs-vm emacs-auctex emacs-lucid gnumeric hplip hugo hunspell-en hunspell-fr impressive okular pandoc pdf-tools pdf2djvu pdf2svg pdfarranger pdfbox pdfbox-javadoc pdfcrack pdfgrep pdfmerge pdfmod pdfposter pdfresurrect pelican python-sphinx-doc python3-sphinx rubygem-asciidoctor xournal xournalpp xpdf zathura-plugins-all zola name: development-extra

# development-extra
rpm-ostree install autotrace lapack-devel perl python3-bitarray python3-igraph python3-psycopg2 python3-spyder micromamba ruby rubygem-awesome_print rubygem-rake scratch

rpm-ostree install tmux ansible cachix delta devenv dust eza fzf ncdu ripgrep silver-searcher tldr xsel
fi
