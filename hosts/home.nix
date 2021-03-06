#
#  General Home-manager configuration
#
#  flake.nix
#   ├─ ./hosts
#   │   └─ home.nix *
#   └─ ./modules
#       ├─ ./editors
#       │   └─ default.nix
#       ├─ ./programs │   └─ default.nix
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

   programs.vscode = {
      enable = true;
      package = pkgs.vscodium;    # You can skip this if you want to use the unfree version
      extensions = with pkgs.vscode-extensions; [
        # Some example extensions...
        dracula-theme.theme-dracula
        vscodevim.vim
        golang.go
        ms-azuretools.vscode-docker
        yzhang.markdown-all-in-one
      ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          name = "material-palenight-theme";
          publisher = "whizkydee";
          version = "2.0.2";
          sha256 = "113w2iis4zi4z3sqc3vd2apyrh52hbh2gvmxjr5yvjpmrsksclbd";

        }
      ];
    };

   #services.picom.enable = true;
   #services.picom.extraOptions = (builtins.readFile ./picom.conf);
   #services.picom = {
   #  enable = true;
   #  extraOptions = builtins.readFile ./picom.conf;
   #};

   programs.firefox.enable = true;
   programs.alacritty.enable = true;
   home.file = {
     #".config/picom.conf".text = builtins.readFile ./picom.conf;
   };






     home.packages = with pkgs; [
       unzip htop gotop 
       sl #fun
     ];
     home.stateVersion = "22.05";
   }
