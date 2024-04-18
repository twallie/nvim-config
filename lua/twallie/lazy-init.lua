-- from lazy.nvim's github page
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- heres where my packages go :)
require("lazy").setup({
	spec = "twallie.lazy"
})

-- setup for lsp
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({buffer = bufnr})
end)

-- setup for typescript
require('lspconfig').tsserver.setup{}

-- setup for c
require('lspconfig').clangd.setup{}

-- setup for rust
require('lspconfig').rust_analyzer.setup{}
