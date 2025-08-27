{ pkgs, ...}:
let
  gpu-usage-waybar = pkgs.callPackage ../../packages/gpu-usage-waybar/default.nix {};
in
{
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = [
    gpu-usage-waybar
  ];
}