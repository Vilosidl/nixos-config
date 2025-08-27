{ pkgs, ... }:
let
  hyprshot = pkgs.callPackage ../../packages/hyprshot/default.nix {};
in
{
  home.packages = with pkgs; [
    grim
    slurp
    hyprshot
  ];
}