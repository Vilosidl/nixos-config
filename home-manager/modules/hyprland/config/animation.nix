{
  wayland.windowManager.hyprland.settings = {
    animations = {
      enabled = true;
      animation = [
        "windows, 1, 2, md3_decel, popin 80%"
        "border, 1, 10, default"
        "fade, 1, 2, default"
        "workspaces, 1, 3, md3_decel"
        "specialWorkspace, 1, 3, md3_decel, slidevert"
      ];
      bezier = [
        "md3_standard, 0.2, 0, 0, 1"
        "md3_decel, 0.05, 0.7, 0.1, 1"
        "md3_accel, 0.3, 0, 0.8, 0.15"
        "overshot, 0.05, 0.9, 0.1, 1.1"
        "crazyshot, 0.1, 1.5, 0.76, 0.92"
        "hyprnostretch, 0.05, 0.9, 0.1, 1.0"
        "fluent_decel, 0.1, 1, 0, 1"
      ];
    };
  };
}
