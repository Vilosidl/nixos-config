{
  config.wayland.windowManager.hyprland.enable = true;
  config.wayland.windowManager.hyprland.systemd.enable = true;
  config.wayland.windowManager.hyprland.systemd.variables = ["--all"];
  config.wayland.windowManager.hyprland.systemd.extraCommands = [
    "systemctl --user start hyprland-session.target"
  ];
}
