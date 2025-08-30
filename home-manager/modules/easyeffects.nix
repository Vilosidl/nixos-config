{
  services.easyeffects = {
    enable = true;
    extraPresets = {
      my-preset = {
        output = {
        "equalizer" = {
          filters = [
            { type = "equalizer"; name = "preamp"; gain = -4.74; }
            { type = "equalizer"; name = "Filter 1"; frequency = 105.0; gain = -0.7; q = 0.70; filterType = "LSC"; }
            { type = "equalizer"; name = "Filter 2"; frequency = 47.1; gain = -0.6; q = 2.14; filterType = "PK"; }
            { type = "equalizer"; name = "Filter 3"; frequency = 129.5; gain = -5.7; q = 0.53; filterType = "PK"; }
            { type = "equalizer"; name = "Filter 4"; frequency = 169.1; gain = -0.4; q = 1.79; filterType = "PK"; }
            { type = "equalizer"; name = "Filter 5"; frequency = 854.3; gain = 1.0; q = 1.64; filterType = "PK"; }
            { type = "equalizer"; name = "Filter 6"; frequency = 1994.5; gain = 4.6; q = 1.15; filterType = "PK"; }
            { type = "equalizer"; name = "Filter 7"; frequency = 4059.2; gain = -0.6; q = 3.77; filterType = "PK"; }
            { type = "equalizer"; name = "Filter 8"; frequency = 5517.8; gain = 1.8; q = 4.17; filterType = "PK"; }
            { type = "equalizer"; name = "Filter 9"; frequency = 8665.6; gain = 3.5; q = 1.70; filterType = "PK"; }
            { type = "equalizer"; name = "Filter 10"; frequency = 10000.0; gain = 1.7; q = 0.70; filterType = "HSC"; }
      ];
      };
    };
  };
  };
};
}