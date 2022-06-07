#
#  awesome Home manager configuration
#
#  flake.nix
#   ├─ ./hosts
#   │   └─ ./<host>
#   │       └─ home.nix
#   └─ ./modules
#       └─ ./desktop
#           └─ ./awesome-nix
#               └─ home.nix *
#

{ config, lib, pkgs, ... }:

{
  home.file.".config/awesome/" = {
      source = ./awesome;
      recursive = true;	
    };
}
