{ pkgs, ... }:
  {
    boot.kernelParams = [ "psmouse.synaptics_intertouch=0" ];
    boot.kernelPackages = pkgs.linuxPackages_5_15;
    boot.loader.systemd-boot.enable = true;
    boot.loader.systemd-boot.configurationLimit = 10;
    boot.loader.efi.canTouchEfiVariables = true;
  }
