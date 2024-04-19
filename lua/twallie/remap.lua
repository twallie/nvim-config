-- constants and the like
local TAB_SIZE = 4
vim.g.mapleader = " "

-- show project tree on " pv"
vim.keymap.set("n", "<leader>pv", ":Neotree reveal<CR>")

-- terminal shiz
vim.keymap.set("t", "<esc>", "<C-\\><C-n>") -- allow for esc to work normally while in terminal
vim.keymap.set("n", "<leader>tt", ":belowright 10 split | term<CR>") -- allow for easy terminal opening

-- getting my tabs right sheeeesh
local set = vim.opt -- set options
set.tabstop = TAB_SIZE
set.softtabstop = TAB_SIZE
set.shiftwidth = TAB_SIZE


-- set hybrid line numbers
set.relativenumber = true
set.number = true
