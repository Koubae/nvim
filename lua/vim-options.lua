vim.g.mapleader = " "

vim.o.relativenumber = true
vim.o.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.showmode = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Makes searches ignore uppercase vs lowercase by default.
vim.opt.ignorecase = true
-- Makes search become case-sensitive only if your search contains uppercase letters.
vim.opt.smartcase = true
-- Always shows the sign column.
vim.opt.signcolumn = "yes"

-- When opening a vertical split, it opens to the right.
vim.opt.splitright = true
-- When opening a horizontal split, it opens below the current window.
vim.opt.splitbelow = true
-- Keeps at least 8 lines visible above and below the cursor when scrolling.
vim.opt.scrolloff = 8
-- Same idea as scrolloff, but horizontally.
vim.opt.sidescrolloff = 8

vim.opt.termguicolors = true

-- This keybinding uses jk as escape but don't know if like it
vim.api.nvim_set_keymap("i", "qq", "<ESC>", { noremap = true })

-- This keymap clears the search
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err")
vim.keymap.set("n", "<leader>ff", ":!gofmt -w %<CR><CR>")
vim.keymap.set("n", "<leader>pp", ":!prettier -w %<CR><CR>") -- prettier formatter

-- Quick save / quit
-- Ctrl+S -> force save!!!!
vim.keymap.set("n", "<C-s>", "<cmd>w!<CR>", { desc = "Force save file" })
vim.keymap.set("v", "<C-s>", "<Esc><cmd>w!<CR>", { desc = "Force save file" })
vim.keymap.set("i", "<C-s>", "<Esc><cmd>w!<CR>a", { desc = "Force save file" })

vim.keymap.set("n", "<leader><Esc>", "<cmd>wqa!<CR>", { desc = "Force save and quit" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Line diagnostics" })

-- Split Navigation controlls
--vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper split", noremap = true, silent = true })
--vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower split", noremap = true, silent = true })
--vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left split", noremap = true, silent = true })
--vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right split", noremap = true, silent = true })
-- Split Navigation resizing
vim.keymap.set("n", "<leader><Up>", "<C-w>+", { desc = "Increase split height", silent = true })
vim.keymap.set("n", "<leader><Down>", "<C-w>-", { desc = "Decrease split height", silent = true })
vim.keymap.set("n", "<leader><Right>", "<C-w>>", { desc = "Increase split width", silent = true })
vim.keymap.set("n", "<leader><Left>", "<C-w><", { desc = "Decrease spldfst width", silent = true })

-- Keybindings
--vim.keymap.set("n", "<leader>º", "<cmd>Telescope keymaps<cr>", { desc = "Show keymaps" })
vim.keymap.set("n", "<leader>º", function()
	require("telescope.builtin").keymaps({
		modes = { "n", "i", "c", "x", "o", "t" },
	})
end, { desc = "Show all keymaps" })
