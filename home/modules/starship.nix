{
  lib,
  ...
}:
  let sep = " [@](#939393)"; in
  {
    programs.starship.settings = {
      format = lib.strings.concatStrings [
        "$directory"
        " \\$ $battery"
        "${sep}"
        "$time"
        "${sep}"
        "  "
        "$nix_shell"
        "$rust"
        "$ocaml"
      ];
      add_newline = false;
      "custom/sep" = {
        format = " @ ";
        style = "#939393";
      };
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
      battery = {
        format = "[$percentage](#c2c2c2)";
        display = [{
          threshold = 100;
          style = "italic gray";
        }];
      };
      time = {
        disabled = false;
        format = "[$time]($style)";
        style = "#c2c2c2";
        time_format = "%l'%-M'%-S";
        use_12hr = true;
      };
    };
  }
