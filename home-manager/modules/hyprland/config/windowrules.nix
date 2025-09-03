{
  wayland.windowManager.hyprland.settings = {
    windowrule = [
      "size 1000 720, class: ^(nemo)$, title:^().*$"
      "float, class:nemo"

      "opacity 0.9 0.8, class:Alacritty"
      "float, class:Alacritty"

      "size 1000 600, class:pavucontrol"
      "float, class:pavucontrol"
      "center, class:pavucontrol"

      "float, class:org.qbittorrent.qBittorrent"
      "size 1280 720, class:org.qbittorrent.qBittorrent"

      "float, class:org.telegram.desktop"
      "size 300 850, class:org.telegram.desktop"
      "move 1400 43, class:org.telegram.desktop"

      "float, class:imv"

      "float, class:discord-stable"
      "move 800 43, class:discord-stable"
      "size 1100 640, class:discord-stable"

      "float, class:org.prismlauncher.PrismLauncher"
      "size 1100 720, class:org.prismlauncher.PrismLauncher"
      "workspace 2 silent, class:org.prismlauncher.PrismLauncher"
      "workspace 2 silent, title:(Minecraft*)(.*)"

      "float, class:librewolf"
      "workspace 1 silent, class:librewolf"
      "center, class:librewolf"
      "size 1680 960, class:librewolf"

      "float, class:gnome-disks"

      "float, class:AmneziaVPN"

      "workspace 4, class:obsidian"

      "workspace 3 silent, class:^(jetbrains-.*)$"
      "opacity 0.95, class:^(jetbrains-.*)$"

      "float, title:Disks"

      "float, title:steam"
      "size 1280 720, title:steam"
      "center, title:steam"

      "float, class:net.lutris.Lutris"
      "size 1280 720, class:net.lutris.Lutris"
      "center, class:net.lutris.Lutris"

      "float, class:Tor Browser"

      "immediate, class:geometrydash.exe"
      "workspace 8 silent, title:New Tab - Chromium"
    ];
    windowrulev2 = [
      "noinitialfocus,xwayland:1"
    ];
  };
}