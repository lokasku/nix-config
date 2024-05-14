{ ... }:
  {
    wayland.windowManager.hyprland = {
      enable = true;
      plugins = [];
      systemd.enable = true;
      settings = {
        decoration = {
          shadow_offset = "0 5";
        };
      };
    };
  }
