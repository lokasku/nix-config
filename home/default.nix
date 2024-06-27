{ pkgs, ... }:
  {
    nixpkgs.config.allowUnfree = true;

    imports = [
      ./modules
    ];

    home = {
      username = "lokasku";
      homeDirectory = "/home/lokasku";
      stateVersion = "23.11";
      packages = with pkgs; [
        cargo
        prismlauncher
        (pkgs.callPackage ./modules/pragmata.nix {})
        neofetch
        brightnessctl
        wl-clipboard
      ];
    
      sessionVariables.EDITOR = "code";
    };

    xsession.enable = true;

    fonts.fontconfig.enable = true;

    programs = {
      waybar.enable = true;
      hyprlock.enable = true;
      vscode.enable = true;
      zathura.enable = true;
      brave.enable = true;
      rofi.enable = true;
      kakoune.enable = false;
      mpv.enable = true;
      home-manager.enable = true;
      alacritty.enable = true;
      git.enable = true;
      fish.enable = true;
      starship.enable = true;
      feh.enable = true;
      direnv = {
        enable = true;
        nix-direnv.enable = true;
      };
    };
  }
