{ nixcord, pkgs, ...}:
{
  imports = [
    nixcord.homeModules.nixcord
  ];

  programs.nixcord = {
    enable = true;
    discord.enable = true;
    dorion.enable = false;
    config = {
      frameless = true;
      plugins = {
        alwaysTrust = {
          enable = true;
        };
        betterUploadButton = {
          enable = true;
        };
        blurNSFW = {
          enable = true;
        };
        callTimer = {
          enable = true;
        };
        clearURLs = {
          enable = true;
        };
        disableCallIdle = {
          enable = true;
        };
        fakeNitro = {
          enable = true;
        };
        gameActivityToggle = {
          enable = true;
        };
        imageZoom = {
          enable = true;
        };
        memberCount = {
          enable = true;
        };
        messageLogger = {
          enable = true;
        };
        pinDMs = {
          enable = true;
        };
        showHiddenChannels = {
          enable = true;
        };
        translate = {
          enable = true;
        };
        voiceChatDoubleClick = {
          enable = true;
        };
        volumeBooster = {
          enable = true;
        };
        youtubeAdblock = {
          enable = true;
        };
        webScreenShareFixes = {
          enable = true;
        };
      };
    };
    dorion = {
      sysTray = false;
      theme = "dark";
      autoClearCache = true;
      disableHardwareAccel = false;
      desktopNotifications = true;
    };
  };
}