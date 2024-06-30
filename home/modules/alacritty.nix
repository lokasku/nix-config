{
  programs.alacritty = {
    settings = {
      window = {
        decorations = "none";
        startup_mode = "Maximized";
        opacity = 0.9;
        title = "Alacritty";
        padding = {
          x = 10;
          y = 9;
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
          background = "#161616";
          foreground = "#F0E6FF";
        };
        bright = {
          black = "#f2f2f7";
          red = "#ff6861";
          green = "#0cff86";
          yellow = "#fff261";
          blue = "#9b99ff";
          magenta = "#da9fff";
          cyan = "#70d7ff";
          white = "#f2f2f7";
        };
        normal = {
          black = "#363636";
          red = "#ff6861";
          green = "#30de4b";
          yellow = "#ffd426";
          blue = "#7d7aff";
          magenta = "#da8fff";
          cyan = "#70d7ff";
          white = "#ebebf0";
        };
      };
    };
  };
}
