{ pkgs, ...}:
{
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };

  programs.gamescope = {
    enable = true;
    capSysNice = true;
  };

  programs.steam.gamescopeSession.enable = true;

  programs.steam.extraCompatPackages = with pkgs; [
    proton-ge-bin
  ];
}