{ config, pkgs, ... }:
{
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
