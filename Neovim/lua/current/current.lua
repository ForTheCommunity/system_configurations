-- Default Neovim Theme....

-- Light
-- vim.cmd('colorscheme peachpuff')
-- vim.cmd('colorscheme carbonized-light')
-- vim.cmd('colorscheme zellner')


-- Dark
-- vim.cmd('colorscheme pablo')
-- vim.cmd('colorscheme paramount')
-- vim.cmd('colorscheme parsec')
-- vim.cmd('colorscheme retrobox')
-- vim.cmd('colorscheme ron')
-- vim.cmd('colorscheme sorbet')
-- vim.cmd('colorscheme spacecamp')
-- vim.cmd('colorscheme torte')
-- vim.cmd('colorscheme zaibatsu')





-- Transparent
-- vim.cmd('colorscheme purify')


-- No Effect
-- vim.cmd('colorscheme quiet')


-- Terminal Adaptive
vim.cmd('colorscheme vim')


-- Themes

local function my_themes()
        local buf = vim.api.nvim_create_buf(false, true)
    local lines = {
        "Available Themes Are :",
        "Light Themes ->",
        "1. peachpuff",
        "2. carbonized-light",
        "3. zellner",
	"__________________",
	"Dark Themes ->",
	"1. pablo",
	"2. paramount",
	"3. parsec",
	"4. retrobox",
	"5. ron",
	"6. sorbet",
	"7. spacecamp",
	"8. torte",
	"9.zaibatsu",
	"__________________",
	"Transparent Themes ->",
	"1. purify",
	"2. vim",
	"__________________",
	"Terminal Adaptive ->",
	"1. vim"
    }
    vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)

    local width = vim.api.nvim_get_option("columns")
    local height = vim.api.nvim_get_option("lines")

    local win = vim.api.nvim_open_win(buf, true, {
        relative = "editor",
        width = 40,
        height = 15,
        col = math.floor((width - 40) / 2),
        row = math.floor((height - #lines) / 2),
        style = "minimal"
    })

    vim.api.nvim_buf_set_option(buf, 'bufhidden', 'wipe')
end

local opts = { noremap = true, silent = true }
-- Themes KeyMapping...
vim.keymap.set("n","<leader>the",my_themes,opts)






