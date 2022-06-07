#
#  awesome.nix configuration
#
#  flake.nix
#   ├─ ./hosts
#   │   └─ ./<host>
#   │       └─ default.nix
#   └─ ./modules
#       └─ ./desktop
#           └─ ./awesome-nix
#               └─ awesome.nix *


{ config, lib, pkgs, ... }:

{
    # Enable the X11 windowing system.
    services.xserver = {
      enable = true;
      videoDrivers = ["nouveau"];
      windowManager = {
        awesome = {
          enable = true;
          luaModules = with pkgs.luaPackages; [
            luarocks
          ];
        };
      };
      displayManager = {
        lightdm = {
          enable = true;                          # Wallpaper and gtk theme
          #background = pkgs.nixos-artwork.wallpapers.nineish-dark-gray.gnomeFilePath;
          greeters = {
            gtk = {
              theme = {
                name = "Dracula";
                package = pkgs.dracula-theme;
              };
              cursorTheme = {
                name = "Dracula-cursors";
                package = pkgs.dracula-theme;
                size = 16;
              };
            };
          };
        };
    #	defaultSession = "gnome";
      };
    };

}
