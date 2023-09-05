#
#  picom.nix configuration
#
#  flake.nix
#   ├─ ./hosts
#   │   └─ ./<host>
#   │       └─ default.nix
#   └─ ./modules
#       └─ ./desktop
#           └─ ./picom
#               └─ picom.nix *


{ config, lib, pkgs, ... }:

{
  services.picom = {
    enable = true;
    backend = "glx";
    fade = true;
    fadeDelta = 10;
    fadeSteps = [ "0.04" "0.04" ];
    inactiveDim = "0.0";
    shadow = false;
    shadowOffsets = [ (-60) (-60) ];
    shadowOpacity = "0.20";
  };

}
