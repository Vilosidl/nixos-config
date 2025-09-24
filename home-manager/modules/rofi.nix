{ pkgs, lib, config, ... }:
let
  rawPalette = {
    base06 = "#f4dbd6";
    base0E = "#c6a0f6";
    base08 = "#ed8796";
    base09 = "#f5a97f";
    base0A = "#eed49f";
    base0B = "#a6da95";
    base0C = "#8bd5ca";
    base0D = "#8aadf4";
    base07 = "#b7bdf8";
    base05 = "#cad3f5";
    base0F = "#a5adcb";
    base04 = "#5b6078";
    base03 = "#494d64";
    base02 = "#363a4f";
    base00 = "#24273a";
    base01 = "#1e2030";
  };

  inherit (config.lib.formats.rasi) mkLiteral;
  palette = lib.mapAttrs (_: mkLiteral) rawPalette;
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
             background = palette.base00;
             background-alt = palette.base02;
             foreground = palette.base05;
             selected = palette.base0D;
             active = palette.base0B;
             urgent = palette.base08;
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
             border-color = palette.base0A;
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
             placeholder-color = palette.base0F;
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
             handle-color = palette.base0D;
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
             background-color = palette.base0A;
             text-color = palette.base00;
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
             border-color = palette.base08;
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
  ];
}