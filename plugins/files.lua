return {
	{
		"nvim-telescope/telescope.nvim",
		name = "telescope",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim" },
		opts = function()
			require("telescope").load_extension("file_browser")
		end,
		keys = (function()
			local builtin = require("telescope.builtin")
			local extensions = require("telescope").extensions
			return {
				{
					mode = { "n" },
					"<Leader>ff",
					builtin.find_files,
					desc = "Find files",
				},
				{
					mode = { "n" },
					"<Leader>fb",
					builtin.file_browser,
					desc = "File browser",
				},
				{
					mode = { "n" },
					"<Leader>fg",
					builtin.git_files,
					desc = "Git files",
				},
				{
					mode = { "n" },
					"<Leader>fb",
					function()
						builtin.buffers({ sort_mru = true, ignore_current = true })
					end,
					desc = "Buffers",
				},
				{
					mode = { "n" },
					"<Leader>fh",
					builtin.help_tags,
					desc = "Find help",
				},
				{
					mode = { "n" },
					"<Leader>fw",
					function()
						local word = vim.fn.expand("<cword>")
						builtin.grep_string({ search = word })
					end,
					desc = "Find word",
				},
				{
					mode = { "n" },
					"<Leader>fW",
					function()
						local word = vim.fn.expand("<cWORD>")
						builtin.grep_string({ search = word })
					end,
					desc = "Find Word",
				},
				{
					mode = { "n" },
					"<Leader>fs",
					function()
						builtin.grep_string({ search = vim.fn.input("Grep > ") })
					end,
					desc = "Find grep",
				},
				{
					mode = { "n" },
					"<Leader>fe",
					function()
						extensions.file_browser.file_browser({ path = "%:p:h" })
					end,
					desc = "File explorer",
				}
			}
		end)(),
	},
}
