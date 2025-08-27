{ config, pkgs, ... }:
let
    gpu-screen-recorder-ui-derivation = pkgs.callPackage ../../packages/gpu-screen-recorder-ui/default.nix {};
    gpu-screen-recorder-ui-wrapper = pkgs.callPackage ../../packages/gpu-screen-recorder-ui-wrapper/default.nix {
    gpu-screen-recorder-ui = gpu-screen-recorder-ui-derivation;
    };

in
{
  systemd.user.services.gpu-screen-recorder-ui = {
    Unit = {
      Description="gpu-screen-recorder-ui";
    };

    Install = {
      WantedBy = [ "graphical-session.target" ];
    };

    Service = {
      ExecStart = "${gpu-screen-recorder-ui-wrapper}/bin/gsr-ui";
      Restart = "on-failure";
      Type = "simple";
      Environment = [
        "DISPLAY=:0"
        "XDG_RUNTIME_DIR=/run/user/%U"
        "PATH=${pkgs.lib.makeBinPath [ pkgs.gpu-screen-recorder ]}:${pkgs.alacritty}"
      ];
    };
  };

  home.packages = with pkgs; [
    gpu-screen-recorder
    gpu-screen-recorder-ui-wrapper
  ];
}