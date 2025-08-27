{ pkgs, stdenv, lib, makeWrapper, gpu-screen-recorder, gpu-screen-recorder-ui }:

stdenv.mkDerivation {
  pname = "gpu-screen-recorder-ui-wrapper";
  version = "1.0";

  nativeBuildInputs = [ makeWrapper ];

  dontUnpack = true;

  installPhase = ''
    mkdir -p $out/bin

    makeWrapper "${gpu-screen-recorder-ui}/bin/gsr-ui" "$out/bin/gsr-ui" \
      --prefix PATH : "${lib.makeBinPath [ gpu-screen-recorder ]}"

    makeWrapper "${gpu-screen-recorder-ui}/bin/gsr-ui-cli" "$out/bin/gsr-ui-cli" \
      --prefix PATH : "${lib.makeBinPath [ gpu-screen-recorder ]}"
  '';
}
