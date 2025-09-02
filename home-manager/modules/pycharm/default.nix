{ lib, ... }:
let
  version = "PyCharm2025.1";
in
{
  home.file = {
    ".config/JetBrains/${version}/plugin_PCWMP.license" = {
      enable = true;
      source = ./source/config/plugin_PCWMP.license;
      recursive = true;
    };

    ".config/JetBrains/${version}/plugin_PBASHSUPPORTPRO.license" = {
      enable = true;
      source = ./source/config/plugin_PBASHSUPPORTPRO.license;
      recursive = true;
    };

    ".config/JetBrains/${version}/plugin_PNGINX.license" = {
      enable = true;
      source = ./source/config/plugin_PNGINX.license;
      recursive = true;
    };

    ".config/JetBrains/${version}/plugin_PRAINBOWBRACKET.license" = {
      enable = true;
      source = ./source/config/plugin_PRAINBOWBRACKET.license;
      recursive = true;
    };

    ".config/JetBrains/${version}/pycharm.key" = {
      enable = true;
      source = ./source/config/pycharm.key;
      recursive = true;
    };

    ".config/JetBrains/${version}/options/colors.scheme.xml" = {
      enable = true;
      source = ./source/config/colors.scheme.xml;
      recursive = true;
    };

    ".config/JetBrains/${version}/options/laf.xml" = {
      enable = true;
      source = ./source/config/laf.xml;
      recursive = true;
    };

    ".local/share/JetBrains/${version}" = {
      enable = true;
      source = ./source/local;
      recursive = true;
    };
  };
}