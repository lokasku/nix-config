# Some locale config and keymaps

{ ... }:
  {
    time.timeZone = "Europe/Paris";
    i18n.defaultLocale = "en_US.UTF-8";

    console = {
      font = "Lat2-Terminus16";
      useXkbConfig = true;
    };

    services.libinput.enable = true;

    services.xserver = {
      xkb.variant = "azerty";
      xkb.layout = "fr";
    };
  }
