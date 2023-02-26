
{ config, pkgs, ... }:

{
  services.pipewire = {
    enable = true;
    audio.enable = true;
    pulse.enable = true;
    socketActivation = true;
    wireplumber.enable = true;
    };
}
