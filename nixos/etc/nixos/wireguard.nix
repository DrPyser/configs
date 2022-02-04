{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [ wireguard ];

  networking.firewall.allowedUDPPorts = [ 11408 ];
  
  # wireguard client configuration for home vpn
  networking.wg-quick.interfaces = {
    wg0 = {
      address = [ "10.0.0.2" ];
      listenPort = 11408;
      dns = [ "64.6.64.6" ];
      privateKeyFile = "/root/wireguard-keys/privatekey";
      
      peers = [
        {
          publicKey = "vi8Gvq1ulsI8ub85hhBdtNr3j058miFvgJ4Dv1d7fVI=";
          #presharedKeyFile = "/root/wireguard-keys/preshared_from_peer0_key";
          allowedIPs = [ "10.0.0.2/16" ];
          endpoint = "204.101.12.5:51820";
          persistentKeepalive = 25;
        }
      ];
    };
  };
}

