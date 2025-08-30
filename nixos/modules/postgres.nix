{ pkgs, ... }:
{
  services.postgresql = {
    enable = true;
    package = pkgs.postgresql_15;
    dataDir = "/var/lib/postgresql/15";
    ensureDatabases = [ "myuser" ];
    ensureUsers = [
      {
        name = "myuser";
        ensureDBOwnership = true;
      }
    ];
  authentication = ''
    host all all 127.0.0.1/32 md5
    host all all ::1/128 md5
    local all all peer
  '';
  };
}