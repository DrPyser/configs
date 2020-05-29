{ config, pkgs, ... }:
let
  unstable = import <nixos-unstable> {};
in {
  environment.systemPackages = [
    pkgs.python38Full
    pkgs.python37Full
    pkgs.python38Packages.pip
    #pkgs.python38Packages.pip2nix
  ];
}

