{ pkgs, pkgs-unstable, isInstalled, lib, ... }:
let
  pycharm-professional-patched = pkgs.callPackage ../packages/pycharm-professional-patched/default.nix {};

  weather = pkgs.callPackage ../packages/weather/default.nix {};
  gpu-usage-waybar = pkgs.callPackage ../packages/gpu-usage-waybar/default.nix {};
  soundcard = pkgs.callPackage ../packages/soundcard/default.nix {};
  pipewire-mute-source = pkgs.callPackage ../packages/pipewire-mute-source/default.nix {};
  wlogout-icons = pkgs.callPackage ../packages/wlogout-icons/default.nix {};
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
    cloc
    libnotify
    usbutils
    bat
    cloudflared
    home-manager
    hyprprop

    telegram-desktop
    imv
    vlc
    file-roller
    pavucontrol
    easyeffects
    qbittorrent
    shotcut
    blueman
    filen-desktop
    onlyoffice-desktopeditors
    obsidian
    prismlauncher
    filezilla

    pulseaudio

    wlogout-icons
    pycharm-professional-patched
#    (lib.mkIf isInstalled pycharm-professional-patched)
        ])

++  (with pkgs-unstable; [
    ]);
}
