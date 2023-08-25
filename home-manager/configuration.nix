let
  username = import ./username.nix
in
{
  home.username = username;
  home.homeDirectory = "/home/${username}"
}

