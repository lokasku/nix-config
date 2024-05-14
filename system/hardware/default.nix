{
  pkgs,
  systemSettings,
  ...
}:
  {
    imports = [
      ./audio.nix
      ./bluetooth.nix
      ./graphics.nix
    ];
  }
