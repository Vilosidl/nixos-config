{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  pname = "rmt";
  version = "1.0";

  src = ./rmt;

  dontUnpack = true;

  installPhase = ''
    mkdir -p $out/bin
    cp $src $out/bin/rmt
    chmod +x $out/bin/rmt
  '';
}