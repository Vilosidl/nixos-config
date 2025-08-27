{ pkgs, ...}:
{
  home.packages = with pkgs; [
    amnezia-vpn
  ];
}