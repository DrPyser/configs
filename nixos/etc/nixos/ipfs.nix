{ config, pkgs, ... }:
let
  unstable = import <nixos-unstable> {};
in {
  environment.systemPackages = [
  	pkgs.ipfs
  ];
  systemd.user.services.ipfs-daemon = {
    description = "IPFS Daemon";
    serviceConfig = {
      Type = "simple";
      ExecStart = "${pkgs.ipfs}/bin/ipfs daemon";
      ExecStop = "/usr/bin/env pkill ipfs";
      Restart = "on-failure";
    };
    wantedBy = [ "default.target" ];
  };

  systemd.user.services.ipfs-daemon.enable = true;
}

