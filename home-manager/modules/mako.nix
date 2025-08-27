{ lib, ... }:
{
  catppuccin.mako = {
    enable = true;
    accent = "yellow";
    flavor = "macchiato";
  };
  services.mako = {
    enable = true;
    settings = {
      sort="-time";
      layer="overlay";
      background-color=lib.mkForce "#1e2327";
      width=300;
      height=110;
      border-size=2;
      border-color=lib.mkForce "#d3c6aa";
      border-radius=5;
      icons=1;
      max-icon-size=64;
      default-timeout=2500;
      ignore-timeout=1;
      font=lib.mkForce "JetBrains Mono 14";
      margin = "10, 160, 0, 0";
    };
  };
}