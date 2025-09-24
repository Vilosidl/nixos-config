{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix = {
      url = "github:nix-community/stylix/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixcord = {
      url = "github:kaylorben/nixcord";
    };
    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, nixpkgs-unstable, home-manager, stylix, nixcord, nur, nixvim, disko, chaotic, ... }@inputs:
  let
    system = "x86_64-linux";
    pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
    isInstalled = builtins.pathExists "/run/current-system";
  in {
    nixosConfigurations.dovi = nixpkgs.lib.nixosSystem {
      inherit system;
      specialArgs = {
        inherit inputs;
        inherit pkgs-unstable;
      };
      modules = [
        ./configuration.nix
        ./hardware-configuration.nix
        home-manager.nixosModules.home-manager
        chaotic.nixosModules.default
        disko.nixosModules.disko
        ({ pkgs, ... }: {
          users.defaultUserShell = pkgs.fish;
          users.users.dovi = {
            isNormalUser = true;
            extraGroups = [ "wheel" "networkmanager" "audio" "plugdev" ];
            linger = true;
          };
          home-manager.extraSpecialArgs = { inherit stylix pkgs-unstable nixcord isInstalled; };
          home-manager.backupFileExtension = "backup";
          home-manager.users.dovi = {
            imports = [
              ./home-manager/home.nix
              stylix.homeModules.stylix
              nur.modules.homeManager.default
              nixvim.homeModules.nixvim
            ];
          };
        })
      ];
    };
  };
}

