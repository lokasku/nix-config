{
  pkgs,
  ...
}:
{
  services.polybar = {
      script = "polybar -q a &";
      package = pkgs.polybar.override {
          alsaSupport = true;
          pulseSupport = true;
      }; extraConfig = "";
      config = {
          /* "global/wm" = {
              margin-bottom = "0";
          }; */
          "colors" = {
              white = "aaffffff";
              gray = "aac5c5c5";

              verygreen = "aa4fea67";
              green = "aa57e66d";
              orange = "aaffcc0a";
              red = "aaff4136";
          };
          "settings" = {
              # pseudo-transparency = "true";
          };
          "bar/a" = {
              monitor = "\${env:MONITOR:}";

              width = "100%";
              height = "30";

              fixed-center = "true";
              # background = "191919";
              background = "151515";
              foreground = "aaffffff";
              border-color = "202020";
              border-bottom-size = 0;
              padding = "1";
              wm-name = "polybar";

              module-margin = "2";
              modules-right = "network keyboard battery volume time";
              modules-center = "";
              modules-left = "ewmh";

              font-0 = "PragmataPro Liga:size=12;2"; # Text
              font-1 = "M+1 Nerd Font:style=Medium:size=11;2";
              # font-1 = "Pragmata Pro:size=11;2"; # EWMH
              # font-2 = "Pragmata Pro:size=11;2"; # Battery
          };
          "module/time" = {
              type = "internal/date";
              time = "%H:%M";
              label = "%time%";
          };
          "module/title" = {
              type = "internal/xwindow";
              format = "<label>";
              label = "%title%";
          };
          "module/volume" = {
            type = "internal/pulseaudio";

            # format-volume = "<ramp-volume><label-volume>";
            format-volume = "V: <label-volume>";
            format-muted = "<label-muted>";

            # ramp-volume-padding-right = 2;

            # label-muted = "";
            label-muted = "(MUT)";
            label-muted-foreground = "\${colors.gray}";

            label-volume = "%percentage:3:3%%";
            label-volume-foreground = "\${colors.white}";

            /* ramp-volume-font = 2;
            ramp-volume-0 = "";
            ramp-volume-0-foreground = "\${colors.white}";

            ramp-volume-1 = "";
            ramp-volume-1-foreground = "\${colors.white}";

            ramp-volume-2 = "";
            ramp-volume-2-foreground = "\${colors.white}"; */
          }; 
          "module/ewmh" = rec {
            type = "internal/xworkspaces";

            pin-workspaces = false;
        
            enable-click = false;
            enable-scroll = false;
            
            format = "<label-state>";
            format-foreground = "\${colors.gray}";
            format-padding = 1;
            # format-font = 2;

            padd = 4;
            label-font = 3;

            label-active = "%icon%";
            label-active-foreground = "\${colors.white}";
            label-active-padding-right = padd;

            label-occupied = "%icon%";
            label-occupied-padding-right = padd;
            label-occupied-foreground = "\${colors.gray}";
        
            label-empty = "%icon%";
            label-empty-foreground = "\${colors.gray}";
            label-empty-padding-right = padd;

            icon-0 = "music;·";
            icon-1 = "dev;";
            icon-2 = "www;·";
            icon-3 = "work;·";
            icon-default = "·";
          };
          "module/battery" = rec {
            type = "internal/battery";

            full-at = 99;
            low-at = 20;
            poll-interval = 5;

            # format-discharging = "<ramp-capacity><label-discharging>";
            format-discharging = "B: <label-discharging>";
            format-discharging-foreground = "\${colors.gray}";

            format-full = "full";
            format-full-foreground = "\${colors.verygreen}";

            # format-charging = "<ramp-capacity><label-charging>";
            format-charging = "B: <label-charging>";
            format-charging-foreground = "\${colors.green}";

            format-padding = 1;
            
            label-charging = " %percentage:3:3%%";
            label-discharging = "%percentage:3:3%%";

            /*ramp-capacity-padding-right = 1;
            ramp-capacity-font = 2;
            ramp-capacity-0 = "";
            ramp-capacity-0-foreground = "\${colors.red}";
            ramp-capacity-1 = "";
            ramp-capacity-1-foreground = "\${colors.red}";
            ramp-capacity-2 = "";
            ramp-capacity-2-foreground = "\${colors.orange}";
            ramp-capacity-3 = "";
            ramp-capacity-3-foreground = "\${colors.green}";
            ramp-capacity-4 = "";
            ramp-capacity-4-foreground = "\${colors.green}";*/
          };
          "module/keyboard" = {
              type = "internal/xkeyboard";

              label-layout = "%icon%";
              layout-icon-0 = "fr;FR";
              layout-icon-1 = "us;US";

              label-indicator-on-capslock = "";
              label-indicator-on-numlocl = "";
              label-indicator-on-scrolllock = "";
          };
          "module/network" = {
              type = "internal/network";

              interface = "\${env:WIFI_IF:}";
              interface-type = "wireless";

              format-connected = "CON";
              format-disconnected = "DIS";
              format-packetloss = "PLO";

              /* format-connected = "<label-connected>";
              format-disconnected = "<label-disconnected>";
              format-packetloss = "<label-packetloss>"; */

              /* label-connected = "󱚽";
              label-connected-foreground = "\${colors.white}";
              label-disconnected = "󰖪";
              label-disconnected-foreground = "\${colors.white}";
              label-packetloss = "󱚵";
              label-packetloss-foreground = "\${colors.white}"; */
          };
      };
  };
}
