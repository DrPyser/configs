{ config, pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.bspwm
    pkgs.sxhkd
    pkgs.dmenu
    pkgs.st
    pkgs.xsel
    #pkgs.xev
    pkgs.xdotool
    (pkgs.polybar.override { pulseSupport = true; })
    pkgs.libnotify
    pkgs.dunst
		pkgs.btops
  ];

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.layout = "ca";
  services.xserver.xkbOptions = "caps:super";

  # Enable touchpad support.
  services.xserver.libinput.enable = true;

  services.xserver.desktopManager.xterm.enable = false;
  services.xserver.windowManager.bspwm.enable = true;
  services.xserver.windowManager.default = "bspwm";
}
