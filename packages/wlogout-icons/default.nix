{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  pname = "wlogout-icons";
  version = "1.0";
  src = ./source;
  dontUnpack = true;
  installPhase = ''
    mkdir -p $out/
    cp -r $src/* $out/
  '';
}