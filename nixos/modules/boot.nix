{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.initrd.availableKernelModules = [
    "nvidia_drm" "nvidia_modeset" "nvidia" "nvidia_uvm"
  ];
  boot.loader.timeout = 1;

  boot.kernel.sysctl = {
    "net.ipv4.conf.all.forwarding" = true;
    "net.core.rmem_max" = 7500000;
    "net.core.wmem_max" = 7500000;
  };
}