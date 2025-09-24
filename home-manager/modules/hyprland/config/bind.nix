{
  wayland.windowManager.hyprland.settings = {
    "$mainMod" = "SUPER";
    "$terminal" = "alacritty";
    "$menu" = "rofi -show drun";
    "$neovim" = "$terminal nvim";
    "$fileManager" = "nemo";
    "$browser" = "env GDK_BACKEND=wayland MOZ_ENABLE_WAYLAND=1 librewolf";
    "$screenshotRegion" = "hyprshot -m region -o ~/screenshot";
    "$screenshotWindow" = "hyprshot -m window -o ~/screenshot";
    "$screenshotOutput" = "hyprshot -m output -o ~/screenshot";
    "$obsidian" = "obsidian --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform=wayland";
    "$telegram" = "telegram-desktop";
    "$powerMenu" = "wlogout -b 2";
    "$reloadwaybar" = "systemctl --user restart waybar.service";
    "$calculator" = "rofi -show calc";
    "$discord" = "discord";
    "$pipewireMute" = "pipewire-mute-source";
    "$reloadhyprpaper" = "pkill hyprpaper && hyprpaper";
    "$soundCard" = "soundcard-usb-client";
    "$bluetooth" = "alacritty -e bluetui";
    "$gsr-ui" = "gsr-ui-cli toggle-show";
    "$pycharm" = "pycharm-professional";

    bind = [
      "$mainMod, Return, exec, $terminal"
      "$mainMod, N, exec, $fileManager"
      "$mainMod, V, exec, $discord"
      "$mainMod, R, exec, $menu"
      "$mainMod, O, exec, $obsidian"
      "$mainMod, T, exec, $telegram"
      "$mainMod, P, exec, $screenshotRegion"
      "$mainMod SHIFT, P, exec, $screenshotWindow"
      "$mainMod ALT, P, exec, $screenshotOutput"
      "$mainMod, {, exec, $powerMenu"
      "$mainMod, W, exec, $reloadwaybar"
      "$mainMod, S, exec, $calculator"
      "$mainMod, M, exec, $pipewireMute"
      "$mainMod, B, exec, $browser"
      "$mainMod, U, exec, $soundCard"
      "$mainMod, X, exec, $bluetooth"
      "$mainMod, C, exec, $pycharm"
      "ALT, Z, exec, $gsr-ui"

      "$mainMod SHIFT, F, exec, hyprshade off"
      "$mainMod SHIFT, A, exec, hyprshade auto"

      "$mainMod SHIFT, C, killactive,"
      "$mainMod SHIFT, M, exit,"
      "$mainMod, F, togglefloating,"
      "$mainMod, G, fullscreen,"

      "$mainMod CTRL, P, exec, playerctl play-pause"

      ", XF86AudioRaiseVolume, exec, pactl set-sink-volume 0 +3%"
      ", XF86AudioLowerVolume, exec, pactl set-sink-volume 0 -3%"
      ", XF86AudioMute, exec, pactl set-sink-mute 0 toggle"
    ]
    ++ (builtins.genList (x: "$mainMod, ${toString (x + 1)}, focusworkspaceoncurrentmonitor, ${toString (x + 1)}") 9)
    ++ (builtins.genList (x: "$mainMod SHIFT, ${toString (x + 1)}, movetoworkspace, ${toString (x + 1)}") 9)
    ++ [
      "$mainMod ALT, j, moveactive, -100 0"
      "$mainMod ALT, semicolon, moveactive, 100 0"
      "$mainMod ALT, l, moveactive, 0 -100"
      "$mainMod ALT, k, moveactive, 0 100"

      "$mainMod CTRL, j, resizeactive, -75 0"
      "$mainMod CTRL, semicolon, resizeactive, 75 0"
      "$mainMod CTRL, l, resizeactive, 0 -75"
      "$mainMod CTRL, k, resizeactive, 0 75"

      "$mainMod, mouse_down, workspace, e+1"
      "$mainMod, mouse_up, workspace, e-1"
    ];

    bindm = [
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"
    ];
  };
}