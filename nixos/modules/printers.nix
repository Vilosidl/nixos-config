{ pkgs, ... }:
{
  services.printing = {
    enable = true;
    browsing = true;
    drivers = with pkgs; [
      cups-filters
      cups-browsed
      splix
    ];
  };
}