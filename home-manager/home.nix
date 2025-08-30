{config, pkgs, ...}: {
  imports = [
    ./modules
    ./home-packages.nix
    ./modules/wlogout/default.nix
  ];

  home = {
    username = "dovi";
    homeDirectory = "/home/dovi";
    stateVersion = "25.05";
  };
}
