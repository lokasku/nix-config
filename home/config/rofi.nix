{ lib, pkgs, config, ... }:

{
  programs.rofi = {
    font = "PragmataPro Liga";
    location = "top";
    theme =
      let
        inherit (config.lib.formats.rasi) mkLiteral;
        transparent = mkLiteral "rgb (41, 41, 41)";
        # transparent = mkLiteral "rgb (19, 19, 19)";
        white = mkLiteral "rgb (242, 242, 247)";
        gray0 = mkLiteral "rgb (142, 142, 142)";
        /* gray1 = mkLiteral "rgb (99, 99, 102)";
        gray2 = mkLiteral "rgb (72, 72, 74)";
        gray3 = mkLiteral "rgb (58, 58, 60)";
        gray4 = mkLiteral "rgb (44, 44, 46)";
        gray5 = mkLiteral "rgb (28, 28, 30)"; */
      in {
        "*" = {
          text-color = white;
          font = "FreeSans 13";
          background-color = transparent;
          border-color = mkLiteral "rgba(96, 96, 96, 0.40)";
        };
        "#entry" = {
          placeholder = "Type here";
          text-color = gray0;
          padding = mkLiteral "13px 5px";
        };
        "#prompt" = {
          enabled = false;
        };
        "#window" = {
          # border-radius = mkLiteral "5px";
          padding = mkLiteral "5px 10px";
          border = mkLiteral "1px";
        };
      };
  };
}
