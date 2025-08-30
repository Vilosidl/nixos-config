{ pkgs, ... }:
let
  iconsPath = pkgs.callPackage ../../../packages/wlogout-icons/default.nix {};
in {
  home.file = {
    ".config/wlogout/layout" = {
      source = ./layout;
      recursive = true;
    };
  };
  programs.wlogout = {
    enable = true;
    style = ''
    window {
        font-size: 24pt;
        background-color: rgba(30, 30, 46, 0.8);
    }

    button {
        background-repeat: no-repeat;
        background-position: center;
        background-size: 20%;
        background-color: rgba(200, 220, 255, 0);
        animation: gradient_f 10s ease-in infinite;
        transition: all 0.3s cubic-bezier(.55, 0.0, .28, 1.682), box-shadow 0.2s ease-in-out, background-color 0.2s ease-in-out;
        border-radius: 80px;
        border: 2px;
        outline-style: none;
    }

    button:focus {
        background-size: 30%;
        border: 0px;
        outline-style: none;

    }

    button:hover {
        background-color: transparent;
        color: @color13;
        background-size: 30%;
        margin: 30px;
        border-radius: 80px;
        outline-style: none;

    }

    /* Adjust the size of the icon or content inside the button */
    button span {
        font-size: 1.2em; /* Increase the font size */
    }

    #shutdown {
        background-image: image(url("${iconsPath}/power.png"));
    }

    #reboot {
        background-image: image(url("${iconsPath}/restart.png"));
    }
    '';
   };
}