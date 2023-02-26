
{ config, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    videoDrivers = [ "amdgpu" ];
    desktopManager.plasma5.enable = true;
    displayManager.sddm.enable = true;
    layout = "us";
    libinput.enable = true;
  };
  programs.dconf.enable = true;
  hardware.opengl.driSupport32Bit = true;

}
