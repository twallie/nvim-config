return {
	{
		"folke/tokyonight.nvim",
		lazy = true,
		opts = { style = "moon" },
	},


	-- so if this isnt here no colorscheme is loaded wtf terrible awful terrible
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "tokyonight"
		}
	}
}
