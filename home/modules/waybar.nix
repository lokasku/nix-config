{
  programs.waybar = {
    systemd.enable = true;
    settings = [{
      layer = "top";
      position = "top";
      height = 30;
      output = ["eDP-1"];
      module-left = [ "hyprland/workspaces" ];

      "hyprland/workspaces" = {
        all-outputs = true;
        format = "{name}:{icon}";

        format-icons = {
          "1" = "1";
          "2" = "2";
          "3" = "3";
          "4" = "4";
          "5" = "5";
          "active" = "A";
          "default" = "D";
        };
        persistent-workspaces = {};
      };
    }];
    style = ''
    #workspaces button.active {
        background-color: #bbff00;
        color: red;
    }
    '';
  };
}
