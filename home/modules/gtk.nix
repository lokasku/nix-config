{ pkgs, ... }:
  {
    gtk = {
      enable = true;
      theme = {
        name = "Materia-dark";
        package = pkgs.materia-theme;
      };
      cursorTheme = {
          package = pkgs.apple-cursor;
          size = 20;
          name = "macOS-BigSur-White";
      };
    };
  }
