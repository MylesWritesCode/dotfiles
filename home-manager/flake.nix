{
  description = "Home Manager configuration";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
  let
    system = "aarch64-darwin";
    pkgs = nixpkgs.legacyPackages.${system};
  in 
  {
    homeConfigurations = {
      melllbby = inputs.home-manager.lib.homeManagerConfiguration {
        system = "aarch64-darwin";
        username = builtins.getEnv "USER";
        homeDirectory = builtins.getEnv "HOME";
        configuration = { config, pkgs, ... }:
          let
            overlay-unstable = final: prev: {
              unstable = inputs.nixpkgs-unstable.legacyPackages."${system}"
            };
          inputs 
          {
            nixpkgs.overlays = [ overlay-unstable ];
            nixpkgs.config = {
              allowUnfree = true;
              allowBroken = true;
            };
            imports = [ ./home.nix ];
          };
      };
    };
  };
}
