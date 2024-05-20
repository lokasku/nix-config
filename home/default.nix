{
  pkgs,
  ...
}:
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
        (nerdfonts.override {
          fonts = ["MPlus"];
        })
        neofetch
        brightnessctl
        swaybg
        sway-contrib.grimshot
      ];
    
      sessionVariables.EDITOR = "kak";
    };

    xsession.enable = true;

    fonts.fontconfig.enable = true;

    programs = {
      waybar.enable = true;
      hyprlock.enable = true;
      emacs.enable = false;
      vscode.enable = true;
      zathura.enable = true;
      zellij.enable = false;
      brave.enable = true;
      rofi.enable = true;
      kakoune.enable = true;
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

    services = {
      redshift.enable = true;
      picom.enable = false;
      flameshot.enable = true;
      # polybar.enable = true;
    };
  }
