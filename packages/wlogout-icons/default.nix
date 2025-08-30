{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  pname = "wlogout-icons";
  version = "1.0";
  src = builtins.path { path = ./.; };
  dontUnpack = true;
  installPhase = ''
    mkdir -p $out/icons
    cp -r $src/source $out/icons
  '';
}