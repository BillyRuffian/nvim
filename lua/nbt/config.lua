-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- require("catpuccin").setup()
-- vim.cmd.colorscheme "catpuccin"

-- vim.cmd('colorscheme carbonfox')

-- https://arisweedler.medium.com/tab-settings-in-vim-1ea0863c5990
vim.wo.relativenumber = true
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

