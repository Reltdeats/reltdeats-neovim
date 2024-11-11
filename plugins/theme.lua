return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = function()
			require("rose-pine").setup({
				variant = "moon", -- auto, main, moon, or dawn
				dark_variant = "moon", -- main, moon, or dawn
			})
			vim.cmd.colorscheme "rose-pine"
		end
	}
}
