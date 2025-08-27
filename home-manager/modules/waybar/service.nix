{ pkgs, ... }:
{
  systemd.user.services.waybar = {
      Unit = {
        Description="waybar";
      };

      Install = {
        WantedBy = [ "graphical-session.target" ];
      };

      Service = {
        ExecStart = "${pkgs.waybar}/bin/waybar";
        Restart = "on-failure";
        Type = "simple";
        Environment = [
          "DISPLAY=:0"
          "XDG_RUNTIME_DIR=/run/user/%U"
          "PATH=${pkgs.lib.makeBinPath [ pkgs.gpu-screen-recorder ]}:${pkgs.alacritty}"
        ];
      };
  };
}