{ pkgs, lib, config, ... }:
let
  rawPalette = {
    rosewater = "#f4dbd6";
    flamingo  = "#f0c6c6";
    pink      = "#f5bde6";
    mauve     = "#c6a0f6";
    red       = "#ed8796";
    maroon    = "#ee99a0";
    peach     = "#f5a97f";
    yellow    = "#eed49f";
    green     = "#a6da95";
    teal      = "#8bd5ca";
    sky       = "#91d7e3";
    sapphire  = "#7dc4e4";
    blue      = "#8aadf4";
    lavender  = "#b7bdf8";
    text      = "#cad3f5";
    subtext1  = "#b8c0e0";
    subtext0  = "#a5adcb";
    overlay2  = "#939ab7";
    overlay1  = "#8087a2";
    overlay0  = "#6e738d";
    surface2  = "#5b6078";
    surface1  = "#494d64";
    surface0  = "#363a4f";
    base      = "#24273a";
    mantle    = "#1e2030";
    crust     = "#181926";
  };

  inherit (config.lib.formats.rasi) mkLiteral;
  palette = lib.mapAttrs (_: mkLiteral) rawPalette;
  accentName = config.catppuccin.accent;
  accent = palette.${accentName};
in
{
  programs.rofi = {
      enable = true;
      package = pkgs.rofi-wayland;
      theme = {
          "configuration" = {
              show-icons = true;
              display-drun = "";
              drun-display-format = "{name}";
          };

           "*" = {
             font = "JetBrains Mono 10";
             background = palette.base;
             background-alt = palette.surface0;
             foreground = palette.text;
             selected = accent;
             active = palette.green;
             urgent = palette.red;
           };

           "window" = {
             transparency = "real";
             location = mkLiteral "center";
             anchor = mkLiteral "center";
             fullscreen = false;
             width = mkLiteral "600px";
             x-offset = mkLiteral "0px";
             y-offset = mkLiteral "0px";
             enabled = true;
             margin = mkLiteral "0px";
             padding = mkLiteral "0px";
             border = mkLiteral "2px solid";
             border-radius = mkLiteral "12px";
             border-color = accent;
             background-color = mkLiteral "@background";
             cursor = mkLiteral "default";
           };

           "mainbox" = {
             enabled = true;
             spacing = mkLiteral "10px";
             padding = mkLiteral "10px";
             background-color = mkLiteral "transparent";
             children = map mkLiteral [ "inputbar" "listview" ];
           };

           "inputbar" = {
             spacing = mkLiteral "10px";
             padding = mkLiteral "6px";
             border-radius = mkLiteral "6px";
             background-color = mkLiteral "@background-alt";
             text-color = mkLiteral "@foreground";
             children = map mkLiteral [ "prompt" "entry" ];
           };

           "prompt" = {
             background-color = mkLiteral "inherit";
             text-color = mkLiteral "inherit";
           };

           "textbox-prompt-colon" = {
             enabled = true;
             expand = false;
             str = "::";
             background-color = mkLiteral "inherit";
             text-color = mkLiteral "inherit";
           };

           "entry" = {
             background-color = mkLiteral "inherit";
             text-color = mkLiteral "inherit";
             placeholder = "Search...";
             placeholder-color = palette.subtext0;
           };

           "listview" = {
             columns = mkLiteral "2";
             cycle = false;
             dynamic = true;
             scrollbar = false;
             layout = mkLiteral "vertical";
             fixed-height = true;
             fixed-columns = true;
             spacing = mkLiteral "6px";
             background-color = mkLiteral "transparent";
             text-color = mkLiteral "@foreground";
           };

           "scrollbar" = {
             handle-width = mkLiteral "5px";
             handle-color = accent;
             background-color = mkLiteral "@background-alt";
           };

           "element" = {
             spacing = mkLiteral "8px";
             padding = mkLiteral "6px";
             border-radius = mkLiteral "10px";
             background-color = mkLiteral "transparent";
             text-color = mkLiteral "@foreground";
             cursor = mkLiteral "pointer";
           };

           "element normal.normal" = {
             background-color = mkLiteral "@background";
             text-color = mkLiteral "@foreground";
           };

           "element selected.normal" = {
             background-color = accent;
             text-color = palette.base;
           };

           "element-icon" = {
             background-color = mkLiteral "transparent";
             text-color = mkLiteral "inherit";
             size = mkLiteral "22px";
           };

           "element-text" = {
             background-color = mkLiteral "transparent";
             text-color = mkLiteral "inherit";
             vertical-align = mkLiteral "0.5";
             horizontal-align = mkLiteral "0.0";
           };

           "error-message" = {
             padding = mkLiteral "12px";
             border = mkLiteral "2px solid";
             border-radius = mkLiteral "10px";
             border-color = palette.red;
             background-color = mkLiteral "@background";
             text-color = mkLiteral "@foreground";
           };

           "textbox" = {
             background-color = mkLiteral "@background";
             text-color = mkLiteral "@foreground";
             vertical-align = mkLiteral "0.5";
             horizontal-align = mkLiteral "0.0";
             highlight = mkLiteral "none";
           };
      };
      modes = [
      "drun"
      ];
    };
  home.packages = with pkgs; [
    rofi-wayland
    rofi-power-menu
  ];
}