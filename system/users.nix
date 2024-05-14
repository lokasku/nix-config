{
  pkgs,
  ...
}:
  {
    users.users.lokasku = {
      isNormalUser = true;
      extraGroups = [ "wheel" "networkmanager" ];
      packages = with pkgs; [];
      shell = pkgs.fish;
    };

    programs.fish.enable = true;
  }
