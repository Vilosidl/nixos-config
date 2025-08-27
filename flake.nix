{
  description = "Home Manager configuration of Jane Doe";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
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
  };

  outputs = { nixpkgs, nixpkgs-unstable, home-manager, stylix, nixcord, ... }@inputs:
  let
    system = "x86_64-linux";
    pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
  in {
    nixosConfigurations.dovi = nixpkgs.lib.nixosSystem {
      inherit system;
      specialArgs = {
        inherit inputs nixpkgs-unstable;
        inherit pkgs-unstable;
      };
      modules = [
        ./configuration.nix
        home-manager.nixosModules.home-manager
        stylix.nixosModules.stylix
        ({ pkgs, ... }: {
          users.defaultUserShell = pkgs.fish;
          users.users.dovi = {
            isNormalUser = true;
            extraGroups = [ "wheel" "networkmanager" "audio" "plugdev" ];
            linger = true;
          };
          home-manager.extraSpecialArgs = { inherit stylix pkgs-unstable nixcord; };
          home-manager.backupFileExtension = "backup";
          home-manager.users.dovi = {
            imports = [
              ./home-manager/home.nix
              stylix.homeModules.stylix
            ];
          };
        })
      ];
    };
  };
}
