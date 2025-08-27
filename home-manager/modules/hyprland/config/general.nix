{ lib, ... }:
{
  wayland.windowManager.hyprland.settings = {
    general = {
      gaps_in = 5;
      gaps_out = 10;
      border_size = 2;
      "col.active_border" = lib.mkDefault "rgb(939ab7)";
      "col.inactive_border" = lib.mkDefault "rgba(595959aa)";
      resize_on_border = false;
      allow_tearing = true;
      layout = "dwindle";
    };
  };
}