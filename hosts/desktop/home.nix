#
#  Home-manager configuration for desktop
#
#  flake.nix
#   ├─ ./hosts
#   │   └─ ./desktop
#   │       └─ ./home.nix *
#   └─ ./modules
#       └─ ./desktop
#           └─ ./awesome-nix
#               └─ home.nix
#


{ pkgs, ...}:

{
  imports = [
    ( import ../../modules/desktop/awesome-nix/home.nix )
  ]; # import any home.nix module as part of hm config.

  home = {
    packages = with pkgs; [
      gimp              # Graphical Editor
      inkscape          # Vector Graphical Editor
      kdenlive          # Video Editor
      libreoffice       # Office Packages
      plex-media-player # Media Player
      shotcut           # Video Editor
    ];
  };
}


