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
      videoDrivers = ["nvidia"];
      windowManager = {
        awesome = {
          enable = false;
          luaModules = with pkgs.luaPackages; [
            luarocks
          ];
        };
        i3 = {
          enable = true;
          extraPackages = with pkgs; [
            dmenu #application launcher most people use
            i3status # gives you the default i3 status bar
            i3lock #default i3 screen locker
            i3blocks #if you are planning on using i3blocks over i3status
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
