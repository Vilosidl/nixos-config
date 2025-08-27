{ stdenv, lib }:

stdenv.mkDerivation {
  pname = "rofi-themes";
  version = "1.0";
  src = lib.cleanSource ./files;
  installPhase = ''
    mkdir -p $out/share/rofi/
    cp -r $src/* $out/share/rofi/
  '';
}