require("toggleterm").setup{
  -- size can be a number or function which is passed the current terminal
  open_mapping = [[<c-\>]],
  direction =  'float',
  close_on_exit = true, -- close the terminal window when the process exits
  shell = vim.o.shell, -- change the default shell
  -- This field is only relevant if direction is set to 'float'
  float_opts = {
    -- The border key is *almost* the same as 'nvim_win_open'
    -- see :h nvim_win_open for details on borders however
    -- the 'curved' border is a custom border type
    -- not natively supported but implemented in this plugin.
    border =  'curved',
    width = 160,
    height = 60,
    winblend = 3,
    highlights = {
      border = "Normal",
      background = "Normal",
    }
  }
}

