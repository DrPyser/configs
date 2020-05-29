{
  fileSystems."/mnt/share" = {
    device = "//147.253.16.181/media";
    fsType = "cifs";
    options = let
        # this line prevents hanging on network split
        automount_opts = "port=2240,x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";
    in ["${automount_opts},credentials=/etc/nixos/smb-secrets"];
  };
}
