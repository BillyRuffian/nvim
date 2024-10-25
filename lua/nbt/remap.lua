vim.g.mapleader = ' '

-- paging
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- find next

vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- greatest remap ever -- the primagen
vim.keymap.set("x", "<leader>p", [["_dP]])

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- nvim-tree
vim.keymap.set('n', '<leader>tt', function()
  vim.cmd.NvimTreeToggle()
end)

-- window controls
vim.keymap.set('n', '<C->>', '<C-w>>')
vim.keymap.set('n', '<C-<>', '<C-w><')
