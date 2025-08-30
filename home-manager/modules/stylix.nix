{ pkgs, ... }: {
    home.packages = with pkgs; [
      catppuccin-cursors
    ];

    stylix = {
      enable = true;
      polarity = "dark";
      base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-macchiato.yaml";
      targets = {
        neovim.enable = false;
        waybar.enable = false;
        rofi.enable = false;
        hyprland.enable = false;
        hyprpaper.enable = true;
      };

      cursor = {
        name = "catppuccin-macchiato-teal-cursors";
        size = 24;
        package = pkgs.catppuccin-cursors.macchiatoTeal;
      };

      fonts = {
        monospace = {
          name = "JetBrainsMono";
          package = pkgs.jetbrains-mono;
        };
        sansSerif = {
          name = "JetBrainsMono";
          package = pkgs.jetbrains-mono;
        };
        serif = {
          name = "JetBrainsMono";
          package = pkgs.jetbrains-mono;
        };

        sizes = {
          terminal = 13;
          applications = 12.5;
        };
      };

      iconTheme = {
        enable = true;
        package = pkgs.papirus-icon-theme;
        dark = "Papirus-Dark";
        light = "Papirus-Light";
      };

      image = pkgs.fetchurl {
        url = "https://raw.githubusercontent.com/zhichaoh/catppuccin-wallpapers/refs/heads/main/os/nix-black-4k.png";
        hash = "sha256-HRZYeKDmfA53kb3fZxuNWvR8cE96tLrqPZhX4+z4lZA=";
      };
    };

}
