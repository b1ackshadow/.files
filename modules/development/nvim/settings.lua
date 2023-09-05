local opt = vim.opt
local g = vim.g


g.mapleader = ' '

-- Indent line
g.indent_blankline_char = '|'

-- Performance
opt.lazyredraw = true;
opt.shell = "/usr/bin/env zsh"
opt.shadafile = "NONE"

-- Colors
opt.termguicolors = true

-- Undo files
opt.undofile = true
opt.undodir = "/home/blackshadow/.cache/"

-- Indentation
opt.smartindent = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.shiftround = true
opt.expandtab = true

-- Set clipboard to use system clipboard
opt.clipboard = "unnamedplus"

-- Use mouse
opt.mouse = "a"

-- Nicer UI settings
opt.cursorline = true
opt.relativenumber = true

-- Get rid of annoying viminfo file
opt.viminfo = ""
opt.viminfofile = "NONE"

-- Miscellaneous quality of life
opt.smartcase = true
opt.ttimeoutlen = 5
opt.compatible = false
opt.hidden = true
opt.shortmess = "atI"

-- auto import lspconfig imports
vim.api.nvim_set_keymap('i', '<cr>', 'compe#confirm("<cr>")', { expr = true })

-- Autostart respective LSP
-- vimscript
vim.api.nvim_command([[

]])


-- Key mappings


local function map(mode,combo,mapping,opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode,combo,mapping,options)
end

map('','<C-n>',':NvimTreeToggle<CR>',{})
map('n','<Leader>d','"_d',{})
map('x','<Leader>d','"_d',{})
map('','<C-f>',':Telescope find_files<CR>',{})
map('','<C-b>',':Telescope buffers<Cr>',{})
map('','<Leader>lg',':Telescope live_grep<Cr>',{})
map('','<Leader>n',':BufferLineCycleNext<Cr>',{})
map('','<Leader>p',':BufferLineCyclePrev<Cr>',{})




g.nvim_tree_quit_on_open = 1
g.dashboard_default_executive ='telescope'

--g.dashboard_preview_command = 'cat'
--g.dashboard_preview_pipeline = 'lolcat'
--g.dashboard_preview_file = '~/.files/nvim/mew.cat'
--g.dashboard_preview_file_height = 12
--g.dashboard_preview_file_width = 80


-- which-key --
require("which-key").setup({
    finder_action_keys = {
        vsplit = 'v', scroll_down = '<C-t>', scroll_up = '<C-s>'
    }
})

-- nvim-colorizer --
require('colorizer').setup()


--nvim-autopairs
--require('nvim-autopairs').setup()
--require('nvim-autopairs.completion.compe').setup({
--    --map_cr = true, --  map <CR> on insert mode
--    map_complete = true -- it will auto insert `(` after select function or method item
--})


require('formatter').setup({
    logging = false,
    filetype = {
        lua = {
            function()
                return {
                    exe = "lua-format",
                    stdin = true
                }
            end
        },
        go = {
            function()
                return {
                exe = "gofmt",
                stdin = true
            }
            end
        }
    }
})



require('neorg').setup {
    -- Tell Neorg what modules to load
    load = {
        ["core.defaults"] = {}, -- Load all the default modules
        ["core.keybinds"] = { -- Configure core.keybinds
        config = {
            default_keybinds = true, -- Generate the default keybinds
            neorg_leader = "<Leader>o" -- This is the default if unspecified
        }
    },
    ["core.norg.concealer"] = {}, -- Allows for use of icons
    ["core.norg.dirman"] = { -- Manage your directories with Neorg
    config = {
        workspaces = {
            my_workspace = "~/neorg"
        }
    }
}
            },
        }


local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

parser_configs.norg = {
    install_info = {
        url = "https://github.com/vhyrro/tree-sitter-norg",
        files = { "src/parser.c" },
        branch = "main"
    },
}


require('nvim-treesitter.configs').setup {
	ensure_installed = { "norg", "go", "cpp", "c", "javascript" },
}

for i = 0,10,1
    do
        vim.api.nvim_set_keymap('n', '<Leader>t' .. i, ':'..i..'ToggleTerm<CR>', { expr = false })
    end

