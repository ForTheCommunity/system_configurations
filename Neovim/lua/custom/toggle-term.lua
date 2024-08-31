
-- Terminal - ToggleTerm
-- defualt setup
 -- require("toggleterm").setup()


-- custom
require("toggleterm").setup{
	
  -- Dynamic terminal size based on direction
  size = function(term)
    if term.direction == "horizontal" then
      return 10  -- Height for horizontal terminals
    elseif term.direction == "vertical" then
      return math.floor(vim.o.columns * 0.4)  -- Width for vertical terminals (40% of the total columns)
    end
  end,
  direction = 'horizontal',  -- Default direction,
}


local opts = { noremap = true, silent = true }


-- Define key mappings for toggling the terminal
vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>ToggleTerm<CR>', opts)


-- Define key mapping for opening a terminal in vertical split
vim.api.nvim_set_keymap('n', '<leader>tv', '<cmd>ToggleTerm direction=vertical<CR>',opts)

-- Define key mapping for opening a terminal in horizontal split
vim.api.nvim_set_keymap('n', '<leader>th', '<cmd>ToggleTerm direction=horizontal<CR>', opts)

-- change terminal mode to normal mode..
vim.api.nvim_set_keymap('t', '<C-n>', '<C-\\><C-n>', opts)
