{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation rec {
  pname = "gpu-usb";
  version = "1.0";

  src = ./source;

  nativeBuildInputs = [ pkgs.python313Packages.pyinstaller];

  buildInputs = [
    pkgs.python313
  ];

buildPhase = ''
  mkdir -p build-dist build-work build-spec

  pyinstaller --noconfirm --onefile \
    --distpath build-dist \
    --workpath build-work \
    --specpath build-spec \
    $src/pipewire-mute-source.py
'';


  installPhase = ''
    mkdir -p $out/bin

    cp build-dist/pipewire-mute-source $out/bin/
    chmod +x $out/bin/*
  '';
}
