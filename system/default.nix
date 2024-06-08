{ pkgs
, systemSettings
, ...
}:
  {
    imports = [
      ./wm
      ./hardware

      ./hardware-configuration.nix
      ./nix-settings.nix
      ./locale.nix
      ./network.nix
      ./users.nix
      ./boot.nix
      ./dm.nix
    ];

    environment.systemPackages = with pkgs; [
      vim
      git
      home-manager
      pamixer
      wget
    ];

    system.stateVersion = "23.11";
  }
