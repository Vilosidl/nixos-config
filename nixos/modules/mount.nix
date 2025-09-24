{
  fileSystems."/media/SSD" = {
    device = "/dev/disk/by-uuid/6a95ed75-d10d-4ba8-a1a7-306f0a7325e6";
    fsType = "ext4";
    options = [ "defaults" "noatime" ];
  };

  fileSystems."/media/HDD" = {
    device = "/dev/disk/by-uuid/e2ee7a43-0f87-43b5-b550-eb6077362bad";
    fsType = "ext4";
    options = [ "defaults" ];
  };
}