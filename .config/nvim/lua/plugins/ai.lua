return {
	{
		"supermaven-inc/supermaven-nvim",
		lazy = false,
		config = function()
			require("supermaven-nvim").setup({
				keymaps = {
					accept_suggestion = "<M-g>",
					clear_suggestion = "<M-x>",
					accept_word = "<M-w>",
				},
				log_level = "off",
			})
		end,
	},
	{
		"robitx/gp.nvim",
		lazy = false,
		config = function()
			require("gp").setup({
				providers = {
					openai = {
						endpoint = "https://api.deepseek.com/v1/chat/completions",
						secret = os.getenv("DEEPSEEK_API_KEY"),
					},
				},
				agents = {
					{
						name = "ChatGPT3-5",
						disable = true,
					},
					{
						name = "ChatGPT4o",
						disable = true,
					},
					{
						name = "deepseek-coder",
						provider = "openai",
						chat = true,
						command = true,
						model = { model = "deepseek-coder", temperature = 0 },
						system_prompt = "You are a helpful assistant.",
					},
				},

				default_command_agent = "deepseek-coder",
				default_chat_agent = "deepseek-coder",

				chat_confirm_delete = false,

				chat_shortcut_respond = { modes = { "n", "v", "x" }, shortcut = "<leader>ar" },
				chat_shortcut_delete = { modes = { "n", "v", "x" }, shortcut = "<leader>ad" },
				chat_shortcut_stop = { modes = { "n", "v", "x" }, shortcut = "<leader>as" },
				chat_shortcut_new = { modes = { "n", "v", "x" }, shortcut = "<leader>an" },
			})
		end,
	},
}
