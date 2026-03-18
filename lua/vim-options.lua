vim.g.mapleader = " "

vim.o.relativenumber = true
vim.o.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.showmode = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- This keybinding uses jk as escape but don't know if like it 
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true })

-- This keymap clears the search
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err")
vim.keymap.set("n", "<leader>ff", ":!gofmt -w %<CR><CR>")
vim.keymap.set("n", "<leader>pp", ":!prettier -w %<CR><CR>") -- prettier formatter

-- Split Navigation controlls
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper split", noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower split", noremap = true, silent = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left split", noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right split", noremap = true, silent = true })
-- Split Navigation resizing
vim.keymap.set("n", "<leader><Up>", "<C-w>+", { desc = "Increase split height", silent = true })
vim.keymap.set("n", "<leader><Down>", "<C-w>-", { desc = "Decrease split height", silent = true })
vim.keymap.set("n", "<leader><Right>", "<C-w>>", { desc = "Increase split width", silent = true })
vim.keymap.set("n", "<leader><Left>", "<C-w><", { desc = "Decrease split width", silent = true })
