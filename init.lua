require("config.lazy")

-- TODO: Migrate this!!
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- settings
vim.o.termguicolors = true
vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false

keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
keymap.set("n", "<space>x", ":.lua<CR>")
keymap.set("v", "<space>x", ":lua<CR>")
keymap.set("n", "<space>q", ":q<CR>")
keymap.set("n", "<C-n>", vim.cmd.Ex)
keymap.set("n", "<C-m>", "<Cmd>nohlsearch|diffupdate|normal!<CR>")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")

keymap.set("n", "<leader>gg", "gg<S-v>G")

-- telescope
keymap.set("n", "<C-p>", "<Cmd>lua require('telescope.builtin').find_files()<CR>")
keymap.set("n", "<space>gr", "<Cmd>lua require('telescope.builtin').live_grep()<CR>")
