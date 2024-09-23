{

  imports = [
    ./zsh.nix
    ./modules/bundle.nix
  ];
  gtk.enable =true;
  home = {
    username = "david";
    homeDirectory = "/home/david";
    stateVersion = "24.05";

  };
  home.sessionVariables =  {
   WLR_RENDERER_ALLOW_SOFTWARE = 1;
    NIXOS_OZONE_WL=1;

  };
  programs.kitty.enable = true;
}
