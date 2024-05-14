{
  pkgs,
  ...
}:
  {
    nixpkgs.config.allowUnfree = true;

    imports = [
      ./config
    ];

    home = {
      username = "lokasku";
      homeDirectory = "/home/lokasku";
      stateVersion = "23.11";
      packages = with pkgs; [
        cargo
        ghc
        cabal-install
        haskellPackages.xmonad
        prismlauncher

        (pkgs.callPackage ./config/pragmata.nix {})
        (nerdfonts.override {
          fonts = ["MPlus"];
        })
        # mplus-outline-fonts.githubRelease

        neofetch
        brightnessctl
      ];
    
      sessionVariables.EDITOR = "kak";
    };

    xsession = {
      enable = true;
    };

    fonts.fontconfig.enable = true;

    programs = {
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
      polybar.enable = true;
    };
  }
