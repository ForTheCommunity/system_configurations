
local opts = { noremap = true, silent = true }

-- Set leader key to space
vim.g.mapleader = " "

-- Open file explorer with <leader>fe
-- vim.keymap.set("n", "<leader>fe", vim.cmd.Lexplore, opts)

-- Quit with <leader>q
vim.keymap.set("n", "<leader>q", vim.cmd.quit, opts)

-- Save all file buffers with <leader>s
vim.keymap.set("n", "<leader>s", vim.cmd.wa, opts)

-- Save the current file with Ctrl+s in Normal mode
vim.keymap.set("n", "<C-s>", ":w<CR>", opts)


-- Window navigation using <leader>w
vim.api.nvim_set_keymap('n', '<leader>wj', '<C-w>j', opts)  --  Move to the window to the below.
vim.api.nvim_set_keymap('n', '<leader>wk', '<C-w>k', opts)  --  Move to the window to the above.
vim.api.nvim_set_keymap('n', '<leader>wh', '<C-w>h', opts)  --  Move to the window to the left.
vim.api.nvim_set_keymap('n', '<leader>wl', '<C-w>l', opts)  --  Move to the window to the right.



-- Window Resizing
-- Resize splits with arrow keys
vim.api.nvim_set_keymap('n', '<C-Up>', ':resize -2<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize +2<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize +2<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize -2<CR>', opts)



-- Go To Definition (gd) Navigations
vim.api.nvim_set_keymap('n', '<leader>f' , '<C-i>',opts) -- go forward
vim.api.nvim_set_keymap('n', '<leader>b' , '<C-o>',opts) -- go backward


