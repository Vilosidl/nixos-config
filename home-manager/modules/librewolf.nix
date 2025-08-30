{ pkgs, ... }:
{
   catppuccin.librewolf.profiles.myprofile = {
     enable = true;
   };

  programs.librewolf = {
    enable = true;
    profiles.myprofile = {
      extensions = {
        force = true;
        packages = with pkgs.nur.repos; [
          rycee.firefox-addons.bitwarden
          rycee.firefox-addons.sponsorblock
          rycee.firefox-addons.tampermonkey
        ];
      };
      settings = {
        "webgl.disabled" = true;

        "security.OCSP.require" = false;

        "privacy.resistFingerprinting" = true;
        "privacy.clearOnShutdown.cookies" = true;
        "privacy.resistFingerprinting.letterboxing" = true;

        "browser.safebrowsing.malware.enabled" = true;
        "browser.safebrowsing.phishing.enabled" = true;
        "browser.safebrowsing.blockedURIs.enabled" = true;
        "browser.safebrowsing.provider.google4.gethashURL" = "https://safebrowsing.googleapis.com/v4/fullHashes:find?$ct=application/x-protobuf&key=%GOOGLE_SAFEBROWSING_API_KEY%&$httpMethod=POST";
        "browser.safebrowsing.provider.google4.updateURL" = "https://safebrowsing.googleapis.com/v4/threatListUpdates:fetch?$ct=application/x-protobuf&key=%GOOGLE_SAFEBROWSING_API_KEY%&$httpMethod=POST";
        "browser.safebrowsing.provider.google.gethashURL" = "https://safebrowsing.google.com/safebrowsing/gethash?client=SAFEBROWSING_ID&appver=%MAJOR_VERSION%&pver=2.2";
        "browser.safebrowsing.provider.google.updateURL" = "https://safebrowsing.google.com/safebrowsing/downloads?client=SAFEBROWSING_ID&appver=%MAJOR_VERSION%&pver=2.2&key=%GOOGLE_SAFEBROWSING_API_KEY%";

        "network.http.referer.XOriginPolicy" = 2;

        "places.history.enabled" = false;
      };
    };

    policies = {
      DefaultDownloadDirectory = "\${home}/Downloads";
    };
  };
}