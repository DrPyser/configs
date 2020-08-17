{ config, pkgs, ... }:
let
  unstable = import <nixos-unstable> {};
  nixpkgs = import <nixpkgs> {};
in {
  environment.systemPackages = [
    nixpkgs.nodePackages.hyperdrive-daemon
  ];
}

