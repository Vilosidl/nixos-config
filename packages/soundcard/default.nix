{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation rec {
  pname = "gpu-usb";
  version = "1.0";

  src = ./source;

  nativeBuildInputs = [ pkgs.makeWrapper pkgs.python313Packages.pyinstaller];

  buildInputs = [
    pkgs.python313
    pkgs.python313Packages.pyusb
    pkgs.libusb1
    pkgs.libnotify
    pkgs.pipewire
  ];

buildPhase = ''
  mkdir -p build-dist build-work build-spec

  pyinstaller --noconfirm --onefile \
    --distpath build-dist \
    --workpath build-work \
    --specpath build-spec \
    --add-binary "${pkgs.libusb1}/lib/libusb-1.0.so:." \
    $src/daemon.py

  pyinstaller --noconfirm --onefile \
    --distpath build-dist \
    --workpath build-work \
    --specpath build-spec \
    $src/client.py
'';


  installPhase = ''
    mkdir -p $out/bin

    cp build-dist/daemon $out/bin/soundcard-usb-daemon
    cp build-dist/client $out/bin/soundcard-usb-client
    chmod +x $out/bin/*

    wrapProgram $out/bin/soundcard-usb-daemon \
     --prefix LD_LIBRARY_PATH : ${pkgs.libusb1}/lib \
      --set PYUSB_BACKEND_LIBUSB1 ${pkgs.libusb1}/lib/libusb-1.0.so '';
}
