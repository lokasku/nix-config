{
  lib,
  pkgs,
  ...
}:
{
  programs.alacritty = {
    settings = {
      window = {
        decorations = "none";
        startup_mode = "Maximized";
        opacity = 0.9;
        title = "Alacritty";
        padding = {
          x = 15;
          y = 15;
        };
        dynamic_padding = true;
      };
      font = {
        normal = {
          family = "PragmataPro Liga";
          style = "Regular";
        };
        bold.style = "Bold";
        italic.style = "Italic";
        bold_italic.style = "Bold Italic";
        size = 12.0;
        offset = {
          x = 0;
          y = -1;
        };
        glyph_offset = {
          x = 0;
          y = -1;
        };
      };
      colors = {
        primary = {
          background = "#161616";  # Dark Grey, mais plus clair que #151515
          foreground = "#F0E6FF";  # Light Lavender, très clair pour un bon contraste
        };

        bright = {
          black = "#a172fd";
          red = "#a77afe";
          green = "#ac82fe";
          yellow = "#b691fe";
          blue = "#c1a0fe";
          magenta = "#cbaffe";
          cyan = "#d6bffe";
          white = "#e0cefe";
        };
        normal = {
          black = "#3f3649";
          red = "#46325d";
          green = "#573d7f";
          yellow = "#7151a9";
          blue = "#916dd5";
          magenta = "#ac8bee";
          cyan = "#dac7ff";
          white = "#ebe0ff";
        };
        /*bright = {
          black = "#000000";
          red = "#ff453a";
          green = "#30d158";
          yellow = "#ffd60a";
          blue = "#0a84ff";
          magenta = "#da8fff";
          cyan = "#64d2ff";
          white = "#f2f2f7";
        };
        normal = {
          black = "#363636";
          red = "#ff6861";
          green = "#30db5b";
          yellow = "#ffd426";
          blue = "#419cff";
          magenta = "#da8fff";
          cyan = "#70d7ff";
          white = "#ebebf0";
        };*/
      };
    };
  };
}

