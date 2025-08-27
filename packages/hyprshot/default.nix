{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  pname = "hyprshot";
  version = "1.0";

   src = pkgs.fetchurl {
    url = "https://raw.githubusercontent.com/Gustash/Hyprshot/main/hyprshot";
    sha256 = "0nvrnw3a8df825ri9dppi13bvffnnnqsvbjzjvmybrcab2rmmvdx";
  };

  dontUnpack = true;

  propagatedBuildInputs = [
    pkgs.slurp
    pkgs.grim
    pkgs.wl-clipboard
  ];

  installPhase = ''
    mkdir -p $out/bin
    cp $src $out/bin/hyprshot
    chmod +x $out/bin/hyprshot
  '';

  meta = with pkgs.lib; {
    description = "Утилита для работы с экраном с поддержкой slurp и grim";
    homepage = "https://github.com/Gustash/Hyprshot";
    platforms = platforms.linux;
  };
}

