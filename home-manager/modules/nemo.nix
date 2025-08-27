{ pkgs, ... }:
{
  dconf = {
    settings = {
      "org/cinnamon/desktop/applications/terminal" = {
        exec = "alacritty";
      };
    };
  };

  xdg.desktopEntries.nemo = {
    name = "Nemo";
    exec = "${pkgs.nemo-with-extensions}/bin/nemo";
    noDisplay = true;
  };

  home.packages = with pkgs; [
    nemo-with-extensions
    nemo-fileroller
    nemo-preview
  ];
}