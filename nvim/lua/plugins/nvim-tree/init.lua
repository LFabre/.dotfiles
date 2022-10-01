-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup({
  sort_by = 'case_sensitive',
  renderer = {
    group_empty = false
  }
})

-- Nvim Tree Shortcuts

-- R 			- Resfresh
-- H 			- Hide / Unhide hidden files
-- <S-e> 	- Expand entire file tree
-- <S-w> 	- Close all open folders
-- f 			- Filter search
-- <C-k> 	- Display File Information
-- q 			- Closes de Explorer

-- <CR>		- Open the file in a new buffer w/ cursor
-- <Tab>	- Open the file in a new buffer
-- <C-t>	- Open the file in a new tab
-- <C-v>	- Open the file in the buffer by dividing it side by side
-- <C-h>	- Open the file in the buffer by dividing it horizontaly

-- a			- Adds a new file
-- r			- Rename a file
-- <C-r>	- Rename a file starting w/ a new name
-- d			- Deletes a file
-- x			- Cut a file
-- c			- Copies a file
-- p			- Pastes a file

-- y			- Copy file name
-- <S-Y>	- Copy file relative path
-- gy			- Copy file absolute path

