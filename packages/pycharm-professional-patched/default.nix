{ pkgs ? import <nixpkgs> {} }:

  pkgs.jetbrains.pycharm-professional.overrideAttrs (oldAttrs: rec {
    my-extra-folder-source = pkgs.fetchurl {
      url = "https://github.com/noviceli/jetbra/releases/download/v1/jetbra-all.zip";
      sha256 = "sha256-/3SkwO8OdNGBAJ5RSrnWR+v6ajcf86ri+dHyvshg/gU";
    };

    postInstall = ''
      mkdir -p $out/lib/pycharm-professional/plugins/jetbra

      ${pkgs.unzip}/bin/unzip -d $out/lib/pycharm-professional/plugins/ ${my-extra-folder-source}

      echo "-javaagent:$out/lib/pycharm-professional/plugins/jetbra/jetbra-agent.jar" >> $out/pycharm-professional/bin/pycharm64.vmoptions
    '';
  })