{ lib, ... }:
let
  version = "PyCharm2025.1";
in
{
  home.file = {
    ".config/JetBrains/${version}/plugin_PCWMP.license" = {
      enable = true;
      source = ./source/config/plugin_PCWMP.license;
    };

    ".config/JetBrains/${version}/plugin_PBASHSUPPORTPRO.license" = {
      enable = true;
      source = ./source/config/plugin_PBASHSUPPORTPRO.license;
    };

    ".config/JetBrains/${version}/plugin_PNGINX.license" = {
      enable = true;
      source = ./source/config/plugin_PNGINX.license;
    };

    ".config/JetBrains/${version}/plugin_PRAINBOWBRACKET.license" = {
      enable = true;
      source = ./source/config/plugin_PRAINBOWBRACKET.license;
    };

    ".config/JetBrains/${version}/pycharm.key" = {
      enable = true;
      source = ./source/config/pycharm.key;
    };

    ".config/JetBrains/${version}/options/colors.scheme.xml" = {
      enable = true;
      source = ./source/config/colors.scheme.xml;
    };

    ".config/JetBrains/${version}/options/laf.xml" = {
      enable = true;
      source = ./source/config/laf.xml;
    };

    ".local/share/JetBrains/${version}" = {
      enable = true;
      source = ./source/local;
      recursive = true;
    };
  };
}