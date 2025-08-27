{ config, ...}:
{
  hardware.graphics = {
    enable = true;
  };

  services.xserver.videoDrivers = ["nvidia"];

  hardware.nvidia = { modesetting.enable = true; open = false; nvidiaSettings = false; };
  hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.latest;
}