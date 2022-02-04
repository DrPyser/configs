# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  environment.systemPackages = [
      pkgs.keybase
      pkgs.keybase-gui
  ];
  services.keybase.enable = true;

}
