{
  description = "Lokasku' NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
    vide.url = "github:lokasku/vide";
  };

  outputs = 
    { nixpkgs, home-manager, ... }@inputs:
   let
     system = "x86_64-linux";
   in
    {
      nixosConfigurations.nixsku = nixpkgs.lib.nixosSystem {
        modules = [ ./system ];

        specialArgs = {
          inherit inputs;
        };
      };

      homeConfigurations.lokasku = home-manager.lib.homeManagerConfiguration {

        pkgs = nixpkgs.legacyPackages.${system};

        extraSpecialArgs = {
          inherit inputs system;
        };

        modules = [ ./home ];
      };
    };
}
