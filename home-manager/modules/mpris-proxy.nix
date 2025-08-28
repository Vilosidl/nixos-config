{ pkgs, ... }:
{
  systemd.user.services.mpris-proxy = {
    Unit = {
      Description = "Mpris proxy";
      After = [ "network.target" "sound.target" ];
    };

    Service = {
      ExecStart = "${pkgs.bluez}/bin/mpris-proxy";
    };

    Install = {
      WantedBy = [ "default.target" ];
    };
  };
}