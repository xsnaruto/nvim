return {
	{
		"yetone/avante.nvim",
		event = "User IceLoad",
		version = false, -- set this if you want to always pull the latest change
		opts = {
			provider = "openai",
			auto_suggestions_provider = "copilot",
			openai = {
				endpoint = "https://api.deepseek.com/v1",
				model = "deepseek-coder",
				timeout = 30000, -- Timeout in milliseconds
				temperature = 0,
				max_tokens = 4096,
				api_key_name = "DEEPSEEK_API_KEY",
			},
		},
		build = "make",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"stevearc/dressing.nvim",
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			--- The below dependencies are optional,
			"nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
			"zbirenbaum/copilot.lua", -- for providers='copilot'
			{
				-- support for image pasting
				"HakonHarnes/img-clip.nvim",
				event = "VeryLazy",
				opts = {
					-- recommended settings
					default = {
						embed_image_as_base64 = false,
						prompt_for_file_name = false,
						drag_and_drop = {
							insert_mode = true,
						},
						-- required for Windows users
						use_absolute_path = true,
					},
				},
			},
			{
				-- Make sure to set this up properly if you have lazy=true
				"MeanderingProgrammer/render-markdown.nvim",
				opts = {
					file_types = { "markdown", "Avante" },
				},
				ft = { "markdown", "Avante" },
			},
		},
	},
}
