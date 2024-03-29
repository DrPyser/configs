# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      /etc/nixos/hardware-configuration.nix
      # graphical interface config
      ./graphical.nix
      # misc services
      ./services.nix
      ./games.nix
      ./python.nix
      ./docker.nix
      ./fs.nix
      ./ipfs.nix
      ./keybase.nix
      ./wireguard.nix
#      ./hyperdrive.nix
    ];

  #hardware settings
  #hardware.brightnessctl.enable = true;
  hardware.bluetooth.enable = true;
  hardware.bluetooth.package = pkgs.bluezFull;

  # configuration for disk encryption
  boot.initrd.luks.devices.root = {
      device = "/dev/nvme0n1p2";
      preLVM = true;
  };


  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.device = "/dev/nvme0n1p1";
  boot.plymouth.enable = true;

  networking.hostName = "drpyser-thinkpad"; # Define your hostname.
  networking.extraHosts = ''
  155.138.159.149	viachicago.vultr
  155.138.145.227 endlessendeavor.vultr
  # for ssh tunneling
  127.0.0.2	viachicago.local ipfs.local
  127.0.0.1	viachicago.local localhost
  '';
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;

  #environment.systemPackages = with pkgs; [ lxqt.lxqt-policykit ]; # provides a default authentification client for policykit
  services.gvfs.enable = true; # enables gvfs
  programs.gnupg.agent.enable = true;
  services.gnome3.gnome-keyring.enable = true;

  # The global useDHCP flag is deprecated, therefore explicitly set to false here.
  # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
  networking.useDHCP = false;
  networking.interfaces.enp0s31f6.useDHCP = true;
  networking.interfaces.wlp61s0.useDHCP = true;

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  console.useXkbConfig = true;

  # Set your time zone.
  time.timeZone = "America/New_York";

  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # pkgs.wineWowPackages.stable
    pinentry
    brightnessctl
    samba4Full
    lxqt.lxqt-policykit 
    wget
    vim 
    firefox 
    (brave.override { })
    git 
    htop 
    networkmanagerapplet 
    which
    dmenu
    st
    alacritty
    xsel
    xdotool
    kakoune
    kak-lsp
    libnotify
    dunst
    gnupg
    pass
    stow
    tree
    file
    gnumake
    python38Full
    tmux
    aria2
    ncat
    man-pages
    man-pages-posix
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = { enable = true; enableSSHSupport = true; };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  services.openssh.ports = [4444];
  services.openssh.listenAddresses = [{ addr = "192.168.2.15"; port = 4444; }];
  services.openssh.extraConfig = ''
  AllowUsers drpyser@192.168.0.0/16
  '';

  # ssh client config
  programs.ssh.startAgent = true;

  # Open ports in the firewall.
  # wireguard port
  # networking.firewall.allowedUDPPorts = [ 11408 ];

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;
  hardware.pulseaudio.package = pkgs.pulseaudioFull;

  # android support
  programs.adb.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.drpyser = {
    createHome = true;
    isNormalUser = true;
    extraGroups = ["adbusers" "wheel" "networkmanager" "audio" "video"]; # Enable ‘sudo’ for the user.
  };
  security.pam.services.drpyser.enableGnomeKeyring = true;

  documentation.dev.enable = true;

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "21.11"; # Did you read the comment?

}

