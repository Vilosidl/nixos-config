s
  services.udev = {
    enable = true;
    extraRules = ''
      SUBSYSTEM=="usb", ATTR{idVendor}=="0b05", ATTR{idProduct}=="183c", MODE="0666", GROUP="plugdev"
    '';
  };
}