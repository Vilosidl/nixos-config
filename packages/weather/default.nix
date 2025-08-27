{ stdenv, lib, jq }:

stdenv.mkDerivation {
  pname = "weather";
  version = "1.0";
  src = ./bin;

  buildInputs = [
    jq
  ];

  installPhase = ''
    mkdir -p $out/bin/
    cp -r $src/* $out/bin/weather
    chmod +x $out/bin/weather
  '';
}