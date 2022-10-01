require('tokyonight').setup({
  style = 'storm', -- 'storm', 'night' or 'day'
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups    
    comments = 'italic',
    keywords = 'italic',
    functions = 'NONE',
    variables = 'NONE',
    -- Background styles. Can be 'dark', 'transparent' or 'normal'
    sidebars = 'dark', -- style for sidebars, see below
    floats = 'dark', -- style for floating windows
  },
  sidebars = { 'qf', 'help' }, -- Set a darker background on sidebar-like windows.  
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
})

vim.cmd[[colorscheme tokyonight]]