
local remap = vim.api.nvim_set_keymap
local defaultOpts = {
  noremap = true,
  silent = true
}

-- Misc
remap('n', '<C-s>', ':w<CR>', defaultOpts)
remap('i', '<C-s>', '<ESC>:w<CR>i', defaultOpts)

-- Better Window Navigations
remap('n', '<C-h>', '<C-w>h', defaultOpts)
remap('n', '<C-j>', '<C-w>j', defaultOpts)
remap('n', '<C-k>', '<C-w>k', defaultOpts)
remap('n', '<C-l>', '<C-w>l', defaultOpts)

-- nvim-tree remaps
remap('n', '<C-b>', ':NvimTreeToggle<CR>', defaultOpts)
remap('n', '<C-S-e>', ':NvimTreeFocus<CR>', defaultOpts)
