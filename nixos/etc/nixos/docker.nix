{ config, pkgs, ... }:
let
  unstable = import <nixos-unstable> {};
in {
  environment.systemPackages = [
  	pkgs.docker
  ];
	virtualisation.docker.enable = true;
	users.users.drpyser.extraGroups = [ "docker" ];
}

