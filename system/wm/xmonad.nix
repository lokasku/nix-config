{
  pkgs,
  ...
}:
  {
    services.xserver.desktopManager.session = [
      { name = "XMonad";
        start = ''
          ${pkgs.runtimeShell} $HOME/.xsession &
          waitPID = $!
        '';
      }
    ];
  }
