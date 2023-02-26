
{ config, pkgs, ... }:

{
  services.flatpak.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-kde pkgs.xdg-desktop-portal-gtk ];

  nixpkgs.config.allowUnfree = true;  
  environment.systemPackages = [
    pkgs.firefox
    pkgs._1password
    pkgs.supergfxctl
    pkgs.asusctl
    pkgs.distrobox
    pkgs.libsForQt5.kaccounts-providers
    pkgs.libsForQt5.powerdevil
    pkgs.libsForQt5.bluedevil
    pkgs.libsForQt5.discover
  ];

  programs._1password-gui = {
    enable = true;
    polkitPolicyOwners = ["adam"];
    };

  nixpkgs.config.firefox.enableBrowserpass = true;
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  systemd.services = {
    asusd = {
      enable = true;
      };
    };

  services.tailscale.enable = true;

  systemd.services.supergfxd = {
    enable = true;
  };

  hardware.openrazer = {
    enable = true;
    users = ["adam"];
  };

  hardware.steam-hardware.enable = true;

}
