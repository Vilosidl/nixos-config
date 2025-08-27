{ lib, ... }:
{
  wayland.windowManager.hyprland.settings = {
    general = {
      gaps_in = 5;
      gaps_out = 10;
      border_size = 2;
      "col.active_border" = lib.mkForce "$accent";
      "col.inactive_border" = lib.mkForce "$overlay0";
      resize_on_border = false;
      allow_tearing = true;
      layout = "dwindle";
    };
  };
}