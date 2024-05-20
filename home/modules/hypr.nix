{
  inputs,
  pkgs,
  ...
}:
  {
    wayland.windowManager.hyprland = {
      enable = true;
      plugins = [];
      systemd.enable = true;
      extraConfig = ''
      monitor = eDP-1,1920x1080,0x0,1,bitdepth,8

      env = XDG_CURRENT_DESKTOP,Hyprland
      env = XDG_SESSION_TYPE,wayland
      env = XDG_SESSION_DESKTOP,Hyprland
      env = QT_AUTO_SCREEN_SCALE_FACTOR,1
      env = QT_QPA_PLATFORM,wayland;xcb
      env = QT_WAYLAND_DISABLE_WINDOWDECORATION,1

      # NVidia
      env = GBM_BACKEND,nvidia-drm
      env = __GLX_VENDOR_LIBRARY_NAME,nvidia
      env = LIBVA_DRIVER_NAME,nvidia

      # exec-once=swaybg -i ~/wallpapers/grad.png
      # exec-once=waybar

      # Submaps
      submap = resize

      binde = ,right, resizeactive, 20 0
      binde = ,left, resizeactive, -20 0
      binde = ,up, resizeactive, 0 -20
      binde = ,down, resizeactive, 0 20

      bind = , escape, submap, reset

      submap = reset

      # Misc
      bind = , Print, exec, grimshot copy area

      binde = , XF86AudioRaiseVolume, exec, pamixer -u && pamixer -i 2
      binde = , XF86AudioLowerVolume, exec, pamixer -u && pamixer -d 2

      binde = , XF86MonBrightnessUp, exec, brightnessctl s 5%+
      binde = , XF86MonBrightnessDown, exec, brightnessctl s 5%-

      binde = , XF86KbdBrightnessUp, exec, brightnessctl --device 'asus::kbd_backlight' s 1+
      binde = , XF86KbdBrightnessDown, exec, brightnessctl --device 'asus::kbd_backlight' s 1-

      bind = SUPER, q, exec, poweroff
      bind = SUPER, r, exec, reboot
      bind = ALT, x, killactive,
      bind = ALT, f, togglefloating, active

      bindm = SHIFT, mouse:272, movewindow
      bindm = SHIFT, ALT_L, resizewindow

      # Launch
      bind = CTRL, p, exec, rofi -show drun -matching fuzzy
      binde = CTRL, t, exec, alacritty
      bind = CTRL, b, exec, brave
      bind = CTRL, n, exec, code

      # Audio
      bindel=, XF86AudioRaiseVolume, exec, pamixer -u && pamixer -i 2
      bindel=, XF86AudioLowerVolume, exec, pamixer -u && pamixer -d 2
      bindel=, XF86AudioMute, exec, pamixer -m

      # Resize Window
      bind = ALT, r, submap, resize

      # Move Window
      binde = ALT, k, movefocus, u
      binde = ALT, j, movefocus, d
      binde = ALT, h, movefocus, l
      binde = ALT, l, movefocus, r

      binde = ALT SHIFT, k, movewindow, u
      binde = ALT SHIFT, j, movewindow, d
      binde = ALT SHIFT, h, movewindow, l
      binde = ALT SHIFT, l, movewindow, r

      binde = ALT CTRL, k, swapwindow, u
      binde = ALT CTRL, j, swapwindow, d
      binde = ALT CTRL, h, swapwindow, l
      binde = ALT CTRL, l, swapwindow, r

      # Window Rules
      windowrule = noblur, ^(brave)$
      windowrule = noblur, ^(code)$
      windowrule = opaque, ^(rofi)$
      windowrulev2 = noshadow, floating:1
      windowrulev2 = float, center, title:^(popup)$
      # windowrulev2 = rounding 20, floating:true

      # Workspaces
      binde = SUPER, h, workspace, -1
      binde = SUPER, l, workspace, +1
      binde = SUPER SHIFT, h, movetoworkspace, -1
      binde = SUPER SHIFT, l, movetoworkspace, +1

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

          col.active_border=0xff3d3d3d
          col.inactive_border=0xff303030

          no_focus_fallback = true
      }

      input {
          kb_layout=fr
          kb_variant=,azerty
          natural_scroll=true
      }

      decoration {
          rounding=5
          drop_shadow=false
          shadow_range = 10
          # shadow_scale = 1.5
          dim_inactive=true
          dim_strength=0.19

          blur {
            size = 16
            xray = true
            noise = 0.04
            brightness = 1.3
            popups = true
          }
      }

      animations {
          first_launch_animation=false
      }

      dwindle {
          no_gaps_when_only=true
      }

      misc {
          disable_hyprland_logo=true
          disable_splash_rendering=true
      }
      '';
    };
  }
