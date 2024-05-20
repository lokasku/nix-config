{ lib, pkgs, config, ... }:

{
  programs.rofi = {
    package = pkgs.rofi-wayland;
    location = "center";
    cycle = true;
    theme =
      let
        inherit (config.lib.formats.rasi) mkLiteral;
        background = mkLiteral "rgb (41, 41, 41)";
        white = mkLiteral "rgb (242, 242, 247)";
        gray = mkLiteral "rgb (142, 142, 142)";
      in {
        "*" = {
          text-color = white;
          font = "FreeSans 14";
          background-color = background;
          border-color = mkLiteral "rgba(96, 96, 96, 0.40)";
        };
        "#window" = {
          transparency = "real";
          padding = mkLiteral "5px 10px";
          border = mkLiteral "1px";
          border-radius = mkLiteral "20px";
          width = mkLiteral "750px";
        };
        
        "#entry" = {
          placeholder = "Search";
          placeholder-color = gray;
          text-color = white;
          padding = mkLiteral "13px 5px";
        };
        "#listview" = {
          enabled = false;
          # require-input = true;
          # dynamic = true;
          # cycle = true;
          spacing = mkLiteral "4px";
        };
        "#prompt" = {
          enabled = false;
        };
      };
  };
}
