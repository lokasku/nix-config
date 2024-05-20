{
  programs.git = {
    aliases = {
      c = "commit -m";
      a = "add";
      ps = "push";
      pl = "pull";
      co = "checkout";
      cl = "clone";
      b = "branch";
    };
    userEmail = "lukasku@proton.me";
    userName = "Lokasku";
    delta.enable = true;
    ignores = [ "*.swp" ];
    extraConfig = ''
    [safe]
        directory = /home/lokasku/nix-config
    '';
  };
}
