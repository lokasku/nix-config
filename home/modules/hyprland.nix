{
  wayland = {
    windowManager = {
      hyprland = {
        enable = true;
        settings = {
          exec-once = [
            "nm-applet"
            "blueman-applet"
          ];
        };
        extraConfig = ''
          monitor = eDP-1,1920x1080,0x0,1,bitdepth,8

          env = XDG_CURRENT_DESKTOP,Hyprland
          env = XDG_SESSION_TYPE,wayland
          env = XDG_SESSION_DESKTOP,Hyprland
          env = QT_AUTO_SCREEN_SCALE_FACTOR,1
          env = QT_QPA_PLATFORM,wayland;xcb
          env = QT_WAYLAND_DISABLE_WINDOWDECORATION,1
          env = HYPRCURSOR_THEME,macOS
          env = HYPRCURSOR_SIZE,24

          # NVIDIA
          env = LIBVA_DRIVER_NAME,nvidia
          env = XDG_SESSION_TYPE,wayland
          env = GBM_BACKEND,nvidia-drm
          env = __GLX_VENDOR_LIBRARY_NAME,nvidia
          cursor {
              no_hardware_cursors = true
          }
          env = NVD_BACKEND,direct
          env = ELECTRON_OZONE_PLATFORM_HINT,auto

          # Resize
          #binde = SUPER, right, resizeactive, 25 0
          #binde = SUPER, left, resizeactive, -25 0
          #binde = SUPER, up, resizeactive, 0 -25
          #binde = SUPER, s, resizeactive, 0 25

          # Misc
          binde = , XF86MonBrightnessUp, exec, brightnessctl s 5%+
          binde = , XF86MonBrightnessDown, exec, brightnessctl s 5%-

          binde = , XF86KbdBrightnessUp, exec, brightnessctl --device 'asus::kbd_backlight' s 1+
          binde = , XF86KbdBrightnessDown, exec, brightnessctl --device 'asus::kbd_backlight' s 1-

          bind = SUPER, f, exec, hyprctl keyword input:kb_layout fr
          bind = SUPER, u, exec, hyprctl keyword input:kb_layout us

          bind = SUPER, q, exec, poweroff
          bind = SUPER, r, exec, reboot
          bind = ALT, x, killactive,
          bind = ALT, f, togglefloating, active

          bindm = SHIFT, mouse:272, movewindow
          bindm = SHIFT, ALT_L, resizewindow

          # Launch
          bind = CTRL SHIFT, p, exec, rofi -show drun -matching fuzzy
          binde = CTRL SHIFT, t, exec, alacritty
          bind = CTRL SHIFT, b, exec, brave
          bind = CTRL SHIFT, n, exec, code

          # Audio
          bindel=, XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%+
          bindel=, XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%-
          bindel=, XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle

          # Move Window
          binde = SUPER, k, movefocus, u
          binde = SUPER, j, movefocus, d
          binde = SUPER, h, movefocus, l
          binde = SUPER, l, movefocus, r

          binde = SUPER SHIFT, k, movewindow, u
          binde = SUPER SHIFT, j, movewindow, d
          binde = SUPER SHIFT, h, movewindow, l
          binde = SUPER SHIFT, l, movewindow, r

          binde = SUPER CTRL, k, swapwindow, u
          binde = SUPER CTRL, j, swapwindow, d
          binde = SUPER CTRL, h, swapwindow, l
          binde = SUPER CTRL, l, swapwindow, r

          # Window Rules
          windowrule = noblur, ^(brave)$
          windowrule = noblur, ^(code)$
          windowrule = opaque, ^(rofi)$
          windowrulev2 = noshadow, floating:1
          windowrulev2 = float, center, title:^(popup)$

          # Workspaces
          binde = SUPER, left, workspace, -1
          binde = SUPER, right, workspace, +1
          binde = SUPER, p, movetoworkspace, -1
          binde = SUPER, n, movetoworkspace, +1

          bind = SUPER, code:10, workspace, 1
          bind = SUPER, code:11, workspace, 2
          bind = SUPER, code:12, workspace, 3
          bind = SUPER, code:13, workspace, 4
          bind = SUPER, code:14, workspace, 5
          bind = SUPER, code:15, workspace, 6
          bind = SUPER, code:16, workspace, 7
          bind = SUPER, code:17, workspace, 8
          bind = SUPER, code:18, workspace, 9
          bind = SUPER, code:19, workspace, 10

          bind = SUPER SHIFT, code:10, movetoworkspace, 1
          bind = SUPER SHIFT, code:11, movetoworkspace, 2
          bind = SUPER SHIFT, code:12, movetoworkspace, 3
          bind = SUPER SHIFT, code:13, movetoworkspace, 4
          bind = SUPER SHIFT, code:14, movetoworkspace, 5
          bind = SUPER SHIFT, code:15, movetoworkspace, 6
          bind = SUPER SHIFT, code:16, movetoworkspace, 7
          bind = SUPER SHIFT, code:17, movetoworkspace, 8
          bind = SUPER SHIFT, code:18, movetoworkspace, 9
          bind = SUPER SHIFT, code:19, movetoworkspace, 10

          # Animations
          animation = windows,1,2,default,popin 90%
          animation = windowsIn,1,2,default,slide
          animation = windowsOut,0
          animation = windowsOut,1,2,default,popin

          animation = layers,1,3,default,slide
          animation = layers,1,3,default,popin 80%

          animation = workspaces,1,3,default,slide

          xwayland {
              force_zero_scaling = true
          }

          general {
              gaps_in=2
              gaps_out=1

              col.active_border=0xff242424
              col.inactive_border=0xff272727

              no_focus_fallback = true
          }

          input {
              kb_layout=fr
              kb_variant=,azerty
              natural_scroll=true
          }

          layerrule = blur, alacritty

          decoration {
              rounding=5
              drop_shadow=false
              shadow_range = 10
              # shadow_scale = 1.5
              dim_inactive=true
              dim_strength=0.16

              blur {
                enabled = true
                size = 8
                passes = 3
                #noise = 0.1
                contrast = 1
                brightness = 1.3
                vibrancy = 2
                popups = true
              }
          }

          animations {
              first_launch_animation=false
          }

          dwindle {
              # no_gaps_when_only=true
          }

          misc {
            disable_hyprland_logo=true
            disable_splash_rendering=true
            background_color=0x000000
          }
        '';
      };
    };
  };
}
