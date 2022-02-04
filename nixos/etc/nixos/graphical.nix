### Setup graphical configuration
{ config, pkgs, ... }:
{
  # import the module for the wm we want
  imports = [
    ./i3.graphical.nix
  ];

  # wm-independent configuration/overrides

  # Xorg configuration
  services.xserver.enable = true;
  services.xserver.layout = "ca";
  # services.xserver.xkbOptions = "caps:super";
  # https://man.archlinux.org/man/DPMSSetTimeouts.3
  services.xserver.serverFlagsSection = ''
    Option "StandbyTime" "10"
    Option "SuspendTime" "60"
    Option "OffTime" "360"
    Option "BlankTime" "0"
  '';

  # Enable touchpad support.
  services.xserver.libinput.enable = true;

  services.xserver.desktopManager.xterm.enable = false;
#  services.xserver.windowManager.bspwm.enable = true;
#  services.xserver.windowManager.dwm.enable = true;
#  services.xserver.windowManager.i3.enable = true;
  services.xserver.displayManager.defaultSession = "none+i3";
}
