{ config, pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.dmenu
    pkgs.xsel
    #pkgs.xev
    pkgs.xdotool
    pkgs.libnotify
    pkgs.dunst
    pkgs.i3
    pkgs.i3blocks
  ];

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # set keyboard settings
  services.xserver.layout = "ca";
  services.xserver.xkbOptions = "caps:super";

  # Enable touchpad support.
  services.xserver.libinput.enable = true;

  # enable i3 as windows manager
  services.xserver.desktopManager.xterm.enable = false;
  services.xserver.windowManager.i3.enable = true;

  # for root environment
  # perhaps should be defined elsewhere
  environment.variables.EDITOR = "kak";
  environment.variables.TERMINAL = "st";
}
