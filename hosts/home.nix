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

   #imports =                                   # Home Manager Modules
   # (import ../modules/editors) ++
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
    home.file = {
      ".config/picom.conf".text = builtins.readFile ./picom.conf;
                      };

                            programs.neovim = {
                              enable = true;
                              viAlias = true;
                              vimAlias = true;
                        #package = pkgs.neovim-nightly;
                        #extraConfig = builtins.readFile ./vimrc;
                        plugins = with pkgs.vimPlugins; [
                          vim-addon-nix
                          vim-plug
                          nvim-lspconfig
                          nvim-treesitter
                          nvim-cmp cmp-buffer cmp-path cmp-treesitter cmp-spell
                          dashboard-nvim 
                          orgmode onedark-nvim neoformat vim-nix cmp-nvim-lsp
                          barbar-nvim nvim-web-devicons vim-airline
                          nvim-autopairs packer-nvim neorg
                          vim-markdown
                        ];
                        extraPackages = with pkgs; [ 
                          rnix-lsp gcc 
                          ripgrep fd nodePackages.pyright];
                        };


  home.packages = with pkgs; [
    unzip htop gotop 
    sl #fun
  ];
  home.stateVersion = "22.05";
}
