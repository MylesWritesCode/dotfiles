{
  description = "Home Manager flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }: {
    defaultPackage.x86_64-linux = home-manager.defaultPackage.x86_64-linux;
    defaultPackage.x86_64-darwin = home-manager.defaultPackage.x86_64-darwin;
    defaultPackage.aarch64-darwin = home-manager.defaultPackage.aarch64-darwin;

    homeConfigurations = {
      # Create a file named username.nix and and run echo $USER > username.nix
      "melllbby" = home-manager.lib.homeManagerConfiguration {
        system = "aarch64-darwin";
        username = "melllbby";
        homeDirectory = "/Users/melllbby";
        configuration.imports = [ ./home.nix ];
      };
    };
  };
}
