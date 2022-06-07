#
#  General Home-manager configuration
#
#  flake.nix
#   ├─ ./hosts
#   │   └─ home.nix *
#   └─ ./modules
#       ├─ ./editors
#       │   └─ default.nix
#       ├─ ./programs
#       │   └─ default.nix
#       ├─ ./services
#       │   └─ default.nix
#       └─ ./shell
#           └─ default.nix
#



{ config, pkgs, ... }:

{

  imports =                                   # Home Manager Modules
  (import ../modules/development) ; #++
   # (import ../modules/programs) ++
   # (import ../modules/services) ++
   # (import ../modules/shell);

   home.username = "blackshadow";
   home.homeDirectory = "/home/blackshadow";
   programs.home-manager.enable = true;

   programs.go = {
     enable = true;

     package = pkgs.go_1_18;
   };
   services.picom.enable = true;

   programs.firefox.enable = true;
   programs.alacritty.enable = true;
   home.file = {
     ".config/picom.conf".text = builtins.readFile ./picom.conf;
   };






     home.packages = with pkgs; [
       unzip htop gotop 
       sl #fun
     ];
     home.stateVersion = "22.05";
   }
