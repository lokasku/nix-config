{
  description = "Lokasku' NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
  };

  outputs =
    { nixpkgs, home-manager, ... }@inputs:
    {
      nixosConfigurations.nixsku = nixpkgs.lib.nixosSystem {
        modules = [ ./system/config.nix ];

        specialArgs = {
          inherit inputs;
        };
      };

      homeConfigurations.lokasku = home-manager.lib.homeManagerConfiguration {

        pkgs = nixpkgs.legacyPackages.x86_64-linux;

        extraSpecialArgs = {
          inherit inputs;
        };

        modules = [ ./home/home.nix ];
      };
    };
}
