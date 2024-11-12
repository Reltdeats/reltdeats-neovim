return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
			-- "nvim-treesitter/nvim-treesitter-refactor",
			-- "nvim-treesitter/nvim-treesitter-context",
			-- "nvim-treesitter/nvim-treesitter-highlight",
			-- "nvim-treesitter/nvim-treesitter-indent",
			-- "nvim-treesitter/nvim-treesitter-query",
			-- "nvim-treesitter/nvim-treesitter-unit",
			-- "nvim-treesitter/nvim-treesitter-playground"
		},
		name = "treesitter",
		build = ":TSUpdate",
		main = "nvim-treesitter.configs",
		opts = {
			ensure_installed = {
				"vimdoc", "javascript", "typescript", "c", "c_sharp", "css", "lua", "luadoc", "rust",
				"jsdoc", "bash", "json", "html", "git_config", "git_rebase", "gitattributes",
				"gitcommit", "gitignore"
			},
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<Leader>is", -- set to `false` to disable one of the mappings
					node_incremental = "<Leader>ni",
					scope_incremental = "<Leader>si",
					node_decremental = "<Leader>nd",
				}
			},
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						["af"] = "@function.outer",
						["if"] = "@function.inner",
						["ac"] = "@class.outer",
						["ic"] = "@class.inner",
					},
				},
				plsp_interop = {
					enable = true,
					border = 'none',
					floating_preview_opts = {},
					peek_definition_code = {
						["<leader>df"] = "@function.outer",
						["<leader>dF"] = "@class.outer",
					},
				},
			}
		}
	}
}
