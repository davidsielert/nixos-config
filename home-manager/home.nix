{

  imports = [
    ./zsh.nix
    ./modules/bundle.nix
  ];

  home = {
    username = "david";
    homeDirectory = "/home/david";
    stateVersion = "23.11";
  };
}
