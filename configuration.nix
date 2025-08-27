{ config, lib, pkgs, ... }:{

  imports = [
    ./nixos/modules
  ];

  networking.hostName = "dovi";
  system.stateVersion = "25.05";
}
