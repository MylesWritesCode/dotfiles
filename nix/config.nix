{ config, pkgs, ... }:

let 
  home-manager = import <home-manager> {};
in {

  home.stateVersion = "23.11";

  home.packages = [
    pkgs.fish
    pkgs.neovim
  ];

  programs.home-manager.enable = true;
  programs.fish.enable = true;
  programs.neovim.enable = true;

  home.users = {
    melllbby = {
      homeDirectory = "/Users/melllbby";
      username = "melllbby";
    };
  };
}
