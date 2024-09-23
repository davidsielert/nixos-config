{ inputs, pkgs, ...}: {
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./modules/bundle.nix
  ];

  disabledModules = [
    ./modules/xserver.nix
  ];

  nixpkgs.overlays = [  ];

  networking.hostName = "nixos"; # Define your hostname.

  time.timeZone = "America/Los_Angeles"; # Set your time zone.

  i18n.defaultLocale = "en_US.UTF-8"; # Select internationalisation properties.

  nix.settings.experimental-features = [ "nix-command" "flakes" ]; # Enabling flakes

  system.stateVersion = "24.05"; # Don't change it bro
  hardware.graphics.enable = true;
   xdg.portal = {

      enable = true;

        wlr.enable = false;

        xdgOpenUsePortal = false;

        extraPortals = [

        pkgs.xdg-desktop-portal-hyprland

        pkgs.xdg-desktop-portal-gtk

      ];

     };
}
