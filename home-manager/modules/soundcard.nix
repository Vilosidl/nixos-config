{ pkgs, ...}:
let
  soundcard = pkgs.callPackage ../../packages/soundcard/default.nix {};
in
{
  systemd.user.services.soundcard = {
    Unit = {
      Description = "Soundcard USB Daemon";
      After = [ "graphical-session.target" ];
      Wants = [ "graphical-session.target" ];
    };

    Install = {
      WantedBy = [ "graphical-session.target" ];
    };

    Service = {
      Type = "simple";
      ExecStart = "${soundcard}/bin/soundcard-usb-daemon";
      Restart = "on-failure";
      RestartSec = 2;
      TimeoutStopSec = 10;
    };
  };
}