{
  pkgs,
  ...
}:
  {
    programs.vscode = {
      extensions = with pkgs.vscode-extensions; [
        jnoortheen.nix-ide
        bbenoist.nix
        mkhl.direnv
        rust-lang.rust-analyzer
        mhutchie.git-graph
        tamasfe.even-better-toml
        file-icons.file-icons
        pkief.material-icon-theme
        ocamllabs.ocaml-platform
      ];
    };
  }
