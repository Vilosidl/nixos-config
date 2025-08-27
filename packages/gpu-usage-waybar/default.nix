{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  pname = "gpu-usage-waybar";
  version = "1.0";
  src = ./source;

  nativeBuildInputs = [ pkgs.makeWrapper ];

  buildInputs = [
    pkgs.linuxKernel.packages.linux_6_16.nvidia_x11
    ];


  installPhase = ''
    mkdir -p $out/bin/
    cp -r $src/bin/* $out/bin/
    chmod +x $out/bin/gpu-usage-waybar

    wrapProgram $out/bin/gpu-usage-waybar \
      --set LD_LIBRARY_PATH "${pkgs.linuxKernel.packages.linux_6_16.nvidia_x11}/lib:${pkgs.linuxKernel.packages.linux_6_16.nvidia_x11}/lib64"
  '';

}