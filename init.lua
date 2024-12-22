require("config.lazy")

-- TODO: Migrate this!!
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.o.termguicolors = true
vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.relativenumber = true

keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
keymap.set("n", "<space>x", ":.lua<CR>")
keymap.set("v", "<space>x", ":lua<CR>")
keymap.set("n", "<space>q", ":q<CR>")
keymap.set("n", "<C-n>", vim.cmd.Ex)
