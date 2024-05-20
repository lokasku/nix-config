{
  lib,
  ...
}:
  {
    programs.starship.settings = {
      format = lib.strings.concatStrings [
        "$directory"
        "  "
        "$nix_shell"
        "$rust"
        "$ocaml"
      ];
      add_newline = false;
      directory = {
        truncation_length = 1;
        format = "[$path]($style)[$read_only](#ff9770)";
        style = "bold #de99ff";
        read_only = " RO";
      };
      rust = {
        format = "[$symbol](fg:#ec7448) ` ";
        symbol = " ";
      };
      ocaml = {
        format = "[$symbol](fg:#f18902) ` ";
        symbol = " ";
      };
      nix_shell = {
        format = "[$symbol](fg:cyan) ` ";
        symbol = " ";
      };
    };
  }
