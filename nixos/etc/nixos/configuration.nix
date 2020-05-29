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
      ./fs.nix
    ];

  #hardware settings
  hardware.brightnessctl.enable = true;
  hardware.bluetooth.enable = true;
  hardware.bluetooth.package = pkgs.bluezFull;

  # configuration for disk encryption
  boot.initrd.luks.devices = [
    {
      name = "root";
      device = "/dev/nvme0n1p2";
      preLVM = true;
    }
  ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.device = "/dev/nvme0n1p1";
  boot.plymouth.enable = true;

  networking.hostName = "drpyser-thinkpad"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;

  #environment.systemPackages = with pkgs; [ lxqt.lxqt-policykit ]; # provides a default authentification client for policykit
  services.gvfs.enable = true; # enables gvfs


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
  i18n.consoleUseXkbConfig = true;

  # Set your time zone.
  time.timeZone = "America/New_York";

	nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    pkgs.samba4Full
    lxqt.lxqt-policykit 
    pkgs.wget
    pkgs.vim 
    pkgs.firefox 
    pkgs.brave
    pkgs.git 
    pkgs.htop 
    pkgs.networkmanagerapplet 
    pkgs.which
    pkgs.bspwm
    pkgs.sxhkd
    pkgs.dmenu
    pkgs.st
    pkgs.xsel
    #pkgs.xev
    pkgs.xdotool
    (pkgs.polybar.override { pulseSupport = true; })
    pkgs.kakoune
    pkgs.kak-lsp
    pkgs.libnotify
    pkgs.dunst
    pkgs.gnupg
    pkgs.pass
    pkgs.stow
    pkgs.tree
    pkgs.file
    pkgs.gnumake
    pkgs.python38Full
    pkgs.tmux
		pkgs.aria2
		pkgs.ncat
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
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;
  hardware.pulseaudio.package = pkgs.pulseaudioFull;

  ## Enable the X11 windowing system.
  #services.xserver.enable = true;
  #services.xserver.layout = "ca";
  #services.xserver.xkbOptions = "caps:super";
#
  ## Enable touchpad support.
  #services.xserver.libinput.enable = true;
#
  #services.xserver.desktopManager.xterm.enable = false;
  #services.xserver.windowManager.bspwm.enable = true;
  #services.xserver.windowManager.default = "bspwm";

  services.nixosManual.showManual = true;

  programs.adb.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.drpyser = {
    createHome = true;
    isNormalUser = true;
    extraGroups = ["adbusers" "wheel" "networkmanager" "audio" "video"]; # Enable ‘sudo’ for the user.
  };

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "19.09"; # Did you read the comment?

}

