require("custom.remap")

-- Print Something On Screen
-- print("Hello")




-- Neovim Editor Configs
vim.o.number = true           -- Enable absolute line numbers
vim.o.relativenumber = true   -- Enable relative line numbers

-- Enable clipboard support
vim.opt.clipboard:append("unnamedplus")


-- Initialize VimPlug
vim.cmd [[
  call plug#begin('~/.local/share/nvim/plugged')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'nvim-tree/nvim-web-devicons'
  Plug 'nvim-tree/nvim-tree.lua'
  Plug 'rust-lang/rust.vim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
  Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
  Plug 'windwp/nvim-autopairs'
  Plug 'rafi/awesome-vim-colorschemes'
 call plug#end()
]]


-- Import Nvim-Tree Configs (File Explorer)
require('custom.nvim-tree-config')
-- Optionally, set a key mapping to toggle nvim-tree
vim.api.nvim_set_keymap('n', '<leader>fe', ':NvimTreeToggle<CR>', { noremap = true, silent = true })


-- Install TreeSitter for Different Languages.....
-- require("custom.treesitter")


-- Telescope Configs
require("custom.telescope")


-- Terminal - ToogleTerm Configs
require("custom.toggle-term")


-- Nvim-AutoPairs
require("custom.nvim-autopairs")


-- Key mappings for coc.nvim
vim.api.nvim_set_keymap('n', 'gd', '<Plug>(coc-definition)', {silent = true})
vim.api.nvim_set_keymap('n', 'gi', '<Plug>(coc-implementation)', {silent = true})
vim.api.nvim_set_keymap('n', 'gr', '<Plug>(coc-references)', {silent = true})
vim.api.nvim_set_keymap('n', 'K', ':call CocActionAsync("doHover")<CR>', {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '[d', '<Plug>(coc-diagnostic-prev)', {silent = true})
vim.api.nvim_set_keymap('n', ']d', '<Plug>(coc-diagnostic-next)', {silent = true})
vim.api.nvim_set_keymap('n', '<space>rn', '<Plug>(coc-rename)', {silent = true})
-- vim.api.nvim_set_keymap('n', '<space>f', ':CocCommand rust-analyzer.applySourceChange<CR>', {silent = true, noremap = true})
-- Use <CR> to confirm completion
vim.api.nvim_set_keymap('i', '<CR>', 'pumvisible() ? coc#_select_confirm() : "<CR>"', {expr = true, silent = true, noremap = true})


-- Autocompletion settings
vim.cmd [[
  inoremap <silent><expr> <C-Space> coc#refresh()
]]



-- Rust Comment Configs
vim.api.nvim_exec([[
  autocmd FileType rust setlocal commentstring=//\ %s
]], false)
-- Key Bindings For Commenting
-- Comment out selected lines in visual mode
vim.api.nvim_set_keymap('v', '<leader>c', ":s/^/\\/\\//<CR>", { noremap = true, silent = true })
-- Uncomment selected lines in visual mode
vim.api.nvim_set_keymap('v', '<leader>u', ":s/^\\/\\///<CR>", { noremap = true, silent = true })

-- Show sign column only when there are signs to display
vim.opt.signcolumn = "auto"


-- Current Default Neovim Theme
require("current.current")
