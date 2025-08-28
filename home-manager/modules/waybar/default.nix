{
  catppuccin.waybar = {
    enable = true;
  };

  programs.waybar = {
    enable = true;
    systemd.enable = true;
    systemd.target = "hyprland-session.target";
    style = ''
      ${builtins.readFile ./style.css}
    '';

    settings = {
      main-bar = {
        layer = "top";
        height = 30;
        output = "HDMI-A-1";
        width = 1600;
        spacing = 5;
        margin-top = 7;
        modules-left = [ "hyprland/workspaces" "hyprland/window" ];
        modules-center = [ "memory" "cpu" "temperature" "custom/gpu-usage" ];
        modules-right = [ "hyprland/language" "custom/change-output" "pulseaudio" "custom/weather" "tray" "clock" ];

      "hyprland/workspaces" = {
        disable-scroll = true;
        all-outputs = true;
        format = "{name}";
        format-icons = {
          "1" = "";
          "2" = "";
          "3" = "";
          "4" = "";
          "5" = "";
          "6" = "";
          "7" = "";
          "8" = "";
          "9" = "";
          "10" = "";
        };
          persistent-workspaces = {
            "1" = [ ];
            "2" = [ ];
            "3" = [ ];
            "4" = [ ];
            "5" = [ ];
            "6" = [ ];
            "7" = [ ];
            "8" = [ ];
          };
          tooltip = false;
        };

        "tray" = {
          icon-size = 18;
          spacing = 10;
        };

        "clock" = {
          format = "{:%H:%M:%S %a}";
          tooltip = false;
          interval = 1;
        };

        "pulseaudio" = {
          scroll-step = 3;
          format = "{icon} {volume}%";
          format-muted = " {format_source}";
          format-icons = {
          default = [ "" "" ];
          };
          on-click = "pavucontrol";
          ignored-sinks = [ "Easy Effects Sink" ];
          tooltip = false;
        };

        "custom/weather" = {
          format = "{}";
          interval = 60;
          exec = "weather";
          tooltip = false;
        };

        "hyprland/language" = {
          format = "{}";
          format-en = "EN";
          format-ru = "RU";
        };

        "memory" = {
          interval = 30;
          format = " {used:0.01f} GB";
          max-length = 10;
          tooltip = false;
        };

        "cpu" = {
          interval = 10;
          format = " {usage}%";
          max-length = 10;
        };

        "custom/gpu-usage" = {
          format = "{} {icon}";
          exec = "gpu-usage-waybar";
          return-type = "json";
          format-icons = "󰾲";
          on-click = "alacritty -e nvtop";
        };

        "temperature" = {
          format = " {temperatureC}°C";
          format-critical = " {temperatureC}°C";
          critical-threshold = 60;
          hwmon-path = "/sys/class/hwmon/hwmon2/temp1_input";
        };

        "hyprland/window" = {
          format = "{}";
          seperate-outputs = true;
          max-length = 25;
        };

        "custom/change-output" = {
          format = "{icon}";
          format-icons = "";
          tooltip = false;
          on-click = "soundcard-usb-client";
        };
      };
    };
  };
}