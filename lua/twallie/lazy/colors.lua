return {
	{
		"folke/tokyonight.nvim",
		lazy = true,
		opts = { style = "night" },

		config = function()
			require('tokyonight').setup{
				styles = {
					-- Style to be applied to different syntax groups
					-- Value is any valid attr-list value for `:help nvim_set_hl`
					comments = { italic = true },
					keywords = { italic = false },
					functions = {},
					variables = {},
					-- Background styles. Can be "dark", "transparent" or "normal"
					sidebars = "dark", -- style for sidebars, see below
					floats = "dark", -- style for floating windows
				},
			}
		end
	},	


	-- so if this isnt here no colorscheme is loaded wtf terrible awful terrible
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "tokyonight"
		}
	}
}
