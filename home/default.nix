{ pkgs
, inputs
, system
, ...
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
        neofetch
        brightnessctl
        inputs.vide.packages.${system}.vide
      ];
    
      sessionVariables.EDITOR = "vide";
    };

    xsession.enable = true;

    fonts.fontconfig.enable = true;

    programs = {
      btop.enable = true;
      waybar.enable = true;
      hyprlock.enable = true;
      vscode.enable = true;
      zathura.enable = true;
      brave.enable = true;
      rofi.enable = true;
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
