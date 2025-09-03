{pkgs, ...}:
{
  home.packages = with pkgs; [
    fishPlugins.fzf-fish
  ];

  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      if status is-login
        if test -z "$DISPLAY" -a "$(tty)" = /dev/tty1
            exec uwsm start hyprland-uwsm.desktop
        end
      end
      set fish_greeting
    '';
    shellAliases = {
      rebuild = "nh os switch /home/dovi/nixos";
      update = "sudo nix-channel --update";
      rm = "rmt";
    };
    plugins = [
      {
        name = "z";
        src = pkgs.fetchFromGitHub {
          owner = "jethrokuan";
          repo = "z";
          rev = "ddeb28a7b6a1f0ec6dae40c636e5ca4908ad160a";
          sha256 = "0c5i7sdrsp0q3vbziqzdyqn4fmp235ax4mn4zslrswvn8g3fvdyh";
        };
      }
    ];
  };
}
