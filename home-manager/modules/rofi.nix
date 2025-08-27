{ pkgs, lib, ... }:
let
  rofi-adi1090x-themes = pkgs.callPackage ../../packages/rofi-themes/default.nix {};
  rofi-scripts = pkgs.callPackage ../../packages/rofi-scripts/default.nix {
    inherit rofi-adi1090x-themes;
  };
in
{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    theme = lib.mkForce "${rofi-adi1090x-themes}/share/rofi/launchers/type-2/style-2.rasi";
    modes = ["drun"];
  };

  home.packages = with pkgs; [
    rofi-wayland
    rofi-scripts.rofi-powermenu
  ];
}