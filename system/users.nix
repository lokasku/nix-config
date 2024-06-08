{ pkgs, ... }:
  {
    users.users.lokasku = {
      isNormalUser = true;
      extraGroups = [ "wheel" "networkmanager" ];
      packages = [];
      shell = pkgs.fish;
    };

    programs.fish.enable = true;
  }
