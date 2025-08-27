{ pkgs, ... }:
{
  systemd.user.services.waybar = {
      Unit = {
        Description="waybar";
        After = [ "graphical-session.target" ];
      };

      Install = {
        WantedBy = [ "graphical-session.target" ];
      };

      Service = {
        ExecStart = "${pkgs.waybar}/bin/waybar";
        Restart = "on-failure";
        Type = "simple";
      };
  };
}