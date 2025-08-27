{ pkgs, pkgs-unstable, ... }:
let
  pycharm-professional-patched = pkgs.callPackage ../packages/pycharm-professional-patched/default.nix {};

  weather = pkgs.callPackage ../packages/weather/default.nix {};
  gpu-usage-waybar = pkgs.callPackage ../packages/gpu-usage-waybar/default.nix {};
  soundcard = pkgs.callPackage ../packages/soundcard/default.nix {};
  pipewire-mute-source = pkgs.callPackage ../packages/pipewire-mute-source/default.nix {};
in
{
  nixpkgs.config.allowUnfree = true;

  home.packages = (with pkgs; [
    neofetch
    wget
    neovim
    wl-clipboard
    weather
    jq
    gpu-usage-waybar
    tree
    uv
    soundcard
    libusb1
    pipewire-mute-source
    wpaperd
    cloc
    libnotify
    usbutils

    telegram-desktop
    imv
    vlc
    file-roller
    pavucontrol
    easyeffects
    pycharm-professional-patched
    qbittorrent
    shotcut
    blueman
    filen-desktop
    onlyoffice-desktopeditors
    obsidian
    prismlauncher

    pulseaudio
        ])

++  (with pkgs-unstable; [
      librewolf
      obs-studio
    ]);
}
