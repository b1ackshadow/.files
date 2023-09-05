pkgs:
  {
      enable = true;
      vimAlias = true;

      extraConfig =''

        luafile ~/.files/nvim/settings.lua
        luafile ~/.files/nvim/treesitter.lua
        luafile ~/.files/nvim/galaxyline.lua
        luafile ~/.files/nvim/bufferline.lua


        lua << EOF
        vim.defer_fn(function()
        vim.cmd [[
        luafile ~/.files/nvim/lsp.lua
        luafile ~/.files/nvim/goimports.lua
        luafile ~/.files/nvim/toggle-term.lua


        source ~/.files/nvim/paradise.vim

        ]]
        end, 100)
        EOF

        source ~/.files/nvim/vimrc
      '';
      plugins = with pkgs.vimPlugins; [

        nvim-web-devicons
        nvim-tree-lua

      # LSP 
      nvim-lspconfig
      nvim-compe
      emmet-vim   

      # eyecandy 
      nvim-treesitter
      vim-nix 
      vim-go
      indentLine
      bufferline-nvim
      galaxyline-nvim
      nvim-colorizer-lua
      toggleterm-nvim 

      # pretty
      neoformat
      vim-commentary
      auto-pairs

      # Fuzzy file finder
      popup-nvim
      plenary-nvim
      telescope-nvim
      fzf-vim
      vim-easymotion


    ] ++ 

    builtins.attrValues ((import ./packages.nix) pkgs) ;

}

