
{ config, pkgs, ...}:

{
  users.mutableUsers = true;
  users.users.adam = {
    isNormalUser = true;
    home = "/home/adam";
    description = "Adam Grubbs";
    extraGroups = [ "wheel" "networkmanager" "libvirtd" ];
    hashedPassword = "$y$j9T$.mgHchSCrhCJlfWP8Fivy/$GZ3GaOaEx4kZ0KBC0BLIceMcsDa6q7sn85DGuv/XlS5";
  };
}
