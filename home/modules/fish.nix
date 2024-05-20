{
  programs.fish = {
    shellAbbrs = {
      en = "cd /etc/nixos";
      hm = "cd ~/.config/home-manager";
      update = "nix-env -u";
    };
    shellAliases = {
      c = "cargo";
      g = "git";
      n = "nix";
    };
  };
}
