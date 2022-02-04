self: super:

{
  # Install overlay:
  # $ mkdir -p ~/.config/nixpkgs/overlays
  # $ curl https://gist.githubusercontent.com/LnL7/570349866bb69467d0caf5cb175faa74/raw/3f3d53fe8e8713ee321ee894ecf76edbcb0b3711/lnl-overlay.nix -o ~/.config/nixpkgs/overlays/lnl.nix
  userPackages = super.userPackages or {} // {

    # Example:
    hello = self.hello;
    # add more packages here...

    man = self.man;
    abcde = self.abcde;
    ripgrep = self.ripgrep;
    bat = self.bat;
    acpi = self.acpi;
    amfora = self.amfora;
    ansible = self.ansible;
    appimage-run = self.appimage-run;
    beets = self.beets;
    # brackets = self.brackets;
    brave = self.brave;
    btops = self.btops;
    busybox = self.busybox;
    canto-curses = self.canto-curses;
    canto-daemon = self.canto-daemon;
    chromium = self.chromium;
    discord = self.discord;
    discord-canary = self.discord-canary;
    docker = self.docker;
    evtest = self.evtest;
    expect = self.expect;
    feh = self.feh;
    ffmpeg-full = self.ffmpeg-full;
    flac = self.flac;
    fswebcam = self.fswebcam;
    fzf = self.fzf;
    # gcc = self.gcc;
    # ghostscript = self.ghostscript;
    # gimp = self.gimp;
    gnupg = self.gnupg;
    # google-chrome = self.google-chrome;
    google-cloud-sdk = self.google-cloud-sdk;
    # groff = self.groff;
    # herbe = self.herbe;
    # herb = self.herb;
    httpie = self.httpie;
    # hugo = self.hugo;
    # imagemagick = self.imagemagick;
    # inkscape = self.inkscape;
    # ipfs = self.ipfs;
    # jmtpfs = self.jmtpfs;
    jq = self.jq;
    keybase = self.keybase;
    # ldns = self.ldns;
    libreoffice = self.libreoffice;
    # lutris = self.lutris;
    meld = self.meld;
    # mindustry = self.mindustry;
    miniflux = self.miniflux;
    mtr = self.mtr;
    nodePackages.node2nix = self.nodePackages.node2nix;
    # nodejs = self.nodejs;
    nushell = self.nushell;
    # pandoc = self.pandoc;
    pavucontrol = self.pavucontrol;
    picard = self.picard;
    pinentry = self.pinentry;
    # python3 = self.python3;
    # python37Packages.editorconfig = self.python37Packages.editorconfig;
    ranger = self.ranger;
    # retext = self.retext;
    # rnv = self.rnv;
    # samba = self.samba;
    # st = self.st;
    transmission = self.transmission;
    ueberzug = self.ueberzug;
    unrar = self.unrar;
    # urbit = self.urbit;
    usbutils = self.usbutils;
    vlc = self.vlc;
    # vscode = self.vscode;
    # webcamoid = self.webcamoid;
    weechat = self.weechat;
    wget = self.wget;
    whois = self.whois;
    wine = self.wine;
    xsel = self.xsel;
    xtitle = self.xtitle;
    zathura = self.zathura;
    zip = self.zip;
    zoom-us = self.zoom-us;



    # abcde = self.abcde; #--2.9.3
    # acpi = self.acpi; #--1.7
    # amfora = self.amfora; #--1.7.2
    # ansible = self.ansible; #--2.9.12
    # appimage-ru = self.appimage-runn;
    # beets = self.beets; #--1.4.9
    # brave = self.brave; #--1.19.88
    # btops = self.btops; #--0.1.0
    # busybox = self.busybox; #--1.31.1-x86_64-unknown-linux-musl
    # canto-curses = self.canto-curses; #--0.9.9
    # canto-daemon = self.canto-daemon; #--0.9.7
    # chromium = self.chromium; #--80.0.3987.132
    # discord = self.discord; #--0.0.13
    # discord-canary = self.discord-canary; #--0.0.116
    # docker = self.docker; #--19.03.6
    # evtest = self.evtest; #--1.34
    # expect = self.expect; #--5.45.4
    # feh = self.feh; #--3.3
    # ffmpeg-full = self.ffmpeg-full; #--4.2.2
    # flac = self.flac; #--1.3.3
    # fswebcam = self.fswebcam; #--20140113
    # fzf = self.fzf; #--0.20.0
    # gcc-wrapper = self.gcc-wrapper; #--8.3.0
    # ghostscript = self.ghostscript; #--9.50
    # gimp = self.gimp; #--2.10.18
    # gnupg = self.gnupg; #--2.2.19
    # google-chrome = self.google-chrome; #--94.0.4606.71
    # google-cloud-sdk = self.google-cloud-sdk; #--323.0.0
    # groff = self.groff; #--1.22.4
    # herb = self.herb;
    # httpie = self.httpie; #--2.0.0
    # hugo = self.hugo; #--0.80.0
    # imagemagick = self.imagemagick; #--6.9.10-71
    # inkscape = self.inkscape; #--0.92.4
    # ipfs = self.ipfs; #--0.4.23
    # jmtpfs = self.jmtpfs; #--0.5
    # jq = self.jq; #--1.6
    # keybase = self.keybase; #--5.4.2
    # ldns = self.ldns; #--1.7.1
    # libreoffice = self.libreoffice; #--6.3.5.2
    # lutris = self.lutris;
    # meld = self.meld; #--3.20.2
    # mindustry = self.mindustry; #--103
    # miniflux = self.miniflux; #--2.0.19
    # mtr = self.mtr; #--0.93
    # node-nod = self.node-nodee2nix; #-1.7.0
    # nodejs = self.nodejs; #--10.19.0
    # nushell = self.nushell; #--0.10.0
    # pandoc = self.pandoc; #--2.14.0.3
    # pavucontrol = self.pavucontrol; #--4.0
    # picard = self.picard; # -2.5.6
    # pinentry = self.pinentry; # -1.1.0
    # python3-3.8.0-env = self.python3-3.8.0-env;
    # python3.7-editorconfig = self.python3.7-editorconfig; # -0.12.2
    # ranger = self.ranger; # -1.9.3
    # retext = self.retext; # -7.0.4
    # rnv = self.rnv; # -1.7.11
    # samba = self.samba; # -4.11.5
    # transmission = self.transmission; # -2.94
    # ueberzug = self.ueberzug; # -18.1.5
    # unrar = self.unrar; # -5.9.1
    # urbit = self.urbit; # -1.1
    # usbutils = self.usbutils; # -012
    # vlc = self.vlc; # -3.0.8
    # vscode = self.vscode; # -1.45.0
    # webcamoid = self.webcamoid; # -8.7.1
    # weechat-bin-env = self.weechat-bin-env; # -2.7.1
    # wget = self.wget; # -1.20.3
    # whois = self.whois; # -5.5.5
    # wine-5.0-staging = self.wine-5.0-staging;
    # xsel-unstable = self.xsel-unstable; # -2019-08-21
    # xtitle = self.xtitle; # -0.4.4
    # zathura-with-plugins = self.zathura-with-plugins; # -0.4.4
    # zip = self.zip; # -3.0
    # zoom-us = self.zoom-us; # -3.5.361976.0301

    # Default packages:
    # cacert = self.cacert;
    # nix = self.nix;  # don't enable this on multi-user.

    nix-rebuild = super.writeScriptBin "nix-rebuild" ''
      #!${super.stdenv.shell}
      if ! command -v nix-env &>/dev/null; then
          echo "warning: nix-env was not found in PATH, add nix to userPackages" >&2
          PATH=${self.nix}/bin:$PATH
      fi
      exec nix-env -f '<nixpkgs>' -r -iA userPackages "$@"
    '';

  };
}
