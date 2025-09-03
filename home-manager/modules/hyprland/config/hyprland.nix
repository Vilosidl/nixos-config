{ lib, ... }:
{
  wayland.windowManager.hyprland.settings = {
    misc = {
      force_default_wallpaper = -1;
      disable_hyprland_logo = lib.mkDefault false;
      enable_anr_dialog = false;
    };

    device = {
      name = "epic-mouse-v1";
      sensitivity = -0.5;
    };

    gestures = {
      workspace_swipe = false;
    };

    dwindle = {
      pseudotile = false;
      preserve_split = true;
    };

    ecosystem = {
      no_update_news = true;
      no_donation_nag = false;
    };

    debug = {
      full_cm_proto = true;
      disable_logs = false;
    };

    master = {
      new_status = "master";
    };

    monitor = [
      "HDMI-A-1, 1920x1080@144, 0x0, 1"
      "DVI-D-1, 1920x1080@100, 0x-1080, 1"
    ];

    workspace = [
      "1,monitor:HDMI-A-1, default:true"
      "4,monitor:DVI-D-1, default:true"
    ];
  };
}
