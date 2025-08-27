{pkgs, ...}:
{
  xdg.desktopEntries = {
    "hyprprop" = {
      name = "Hyprprop";
      noDisplay = true;
    };
    "fish" = {
      name = "fish";
      noDisplay = true;
    };
    "Alacritty" = {
      name = "Alacritty";
      noDisplay = true;
    };
    "org.pulseaudio.pavucontrol" = {
      name = "Pavucontrol";
      noDisplay = true;
    };
    "nixos-manual" = {
      name = "nixos-manual";
      noDisplay = true;
    };
    "rofi" = {
      name = "Rofi";
      noDisplay = true;
    };
    "rofi-theme-selector" = {
      name = "rofi-theme-selector";
      noDisplay = true;
    };
    "kvantummanager" = {
      name = "kvantum-manager";
      noDisplay = true;
    };
    "org.gnome.FileRoller" = {
      name = "File-Roller";
      exec = "file-roller";
      icon = "org.gnome.FileRoller";
      noDisplay = true;
    };
    "cups" = {
      name = "cups";
      noDisplay = true;
    };
    "nvim" = {
      name = "nvim";
      noDisplay = true;
    };
    "qt5ct" = {
      name = "qt5ct";
      noDisplay = true;
    };
    "qt6ct" = {
      name = "qt6ct";
      noDisplay = true;
    };
 };
}