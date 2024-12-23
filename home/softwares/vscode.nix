{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      jnoortheen.nix-ide
      bbenoist.nix
      mkhl.direnv
      mhutchie.git-graph
      tamasfe.even-better-toml
      file-icons.file-icons
      pkief.material-icon-theme
      ocamllabs.ocaml-platform
      github.github-vscode-theme
    ];
  };
}
