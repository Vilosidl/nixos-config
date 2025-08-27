{config, pkgs, ...}: {
  imports = [
    ./modules
    ./home-packages.nix
  ];

  home = {
    username = "dovi";
    homeDirectory = "/home/dovi";
    stateVersion = "25.05";
  };
}
