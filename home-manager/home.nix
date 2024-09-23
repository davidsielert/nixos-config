{

  imports = [
    ./zsh.nix
    ./modules/bundle.nix
  ];

  home = {
    username = "david";
    homeDirectory = "/home/david";
    stateVersion = "24.05";
  };
}
