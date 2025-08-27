{
  stdenv,
  lib,
  fetchgit,
  makeWrapper,
  meson,
  ninja,
  addDriverRunpath,
  pkg-config,
  libXcomposite,
  libpulseaudio,
  dbus,
  ffmpeg,
  wayland,
  wayland-scanner,
  wayland-protocols,
  vulkan-headers,
  pipewire,
  libdrm,
  libva,
  libglvnd,
  libXdamage,
  libXi,
  libXrandr,
  libXfixes,
  wrapperDir ? "/run/wrappers/bin",
  gitUpdater,
  libXcursor,
  libcap
}:


stdenv.mkDerivation rec {
  pname = "gpu-screen-recorder-ui";
  version = "1.7.3";

  src = fetchgit {
    url = "https://repo.dec05eba.com/gpu-screen-recorder-ui";
    tag = version;
    sha256 = "DDnUr1uRGgQxpawH3ykX1FFbshA7KY9aNSjjOFaUXDY=";
  };

  nativeBuildInputs = [
    meson
    ninja
    pkg-config
    makeWrapper
    wayland-protocols
    wayland-scanner
    libcap
  ];

  buildInputs = [
    libXcomposite
    libpulseaudio
    dbus
    ffmpeg
    pipewire
    wayland
    vulkan-headers
    libdrm
    libva
    libXdamage
    libXi
    libXrandr
    libXfixes
    libXcursor
    libcap
  ];

  postInstall = ''
    mkdir $out/bin/.wrapped
    mv $out/bin/gsr-ui $out/bin/.wrapped/
    makeWrapper "$out/bin/.wrapped/gsr-ui" "$out/bin/gsr-ui" \
      --prefix LD_LIBRARY_PATH : "${
        lib.makeLibraryPath [
          libglvnd
        ]
      }" \
      --prefix PATH : "${wrapperDir}" \
      --suffix PATH : "$out/bin"
  '';

  meta = with lib; {
    description = "A fullscreen overlay UI for GPU Screen Recorder in the style of ShadowPlay";
    homepage = "https://git.dec05eba.com/gpu-screen-recorder-ui";
    license = licenses.gpl3Only;
    maintainers = with maintainers; [ ];
    platforms = platforms.linux;
  };
}