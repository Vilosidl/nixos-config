{ config, lib, pkgs, ... }:{

  imports = [
    ./nixos/modules
  ];

  networking.hostName = "dovi";
  networking.firewall.enable = true;

  system.stateVersion = "25.05";
}
