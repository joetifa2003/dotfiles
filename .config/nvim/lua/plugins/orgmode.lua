return {
	{
		"nvim-orgmode/orgmode",
		event = "VeryLazy",
		ft = { "org" },
		dependencies = {
			{ "nvim-treesitter/nvim-treesitter" },
		},
		config = function()
			local meetingNotesTarget = "~/orgfiles/meeting-notes/Week %<%V>.org"

			require("orgmode").setup({
				mappings = {
					org = {
						org_return = false,
					},
				},
				win_split_mode = "vsplit",
				org_agenda_files = "~/orgfiles/**/*",
				org_default_notes_file = "~/orgfiles/refile.org",
				org_startup_folded = "showeverything",
				org_capture_templates = {
					t = {
						description = "Task",
						template = "* TODO %?\n  %u",
					},
					m = "Meeting",
					mt = {
						description = "task",
						template = "\n* TODO %^{header} :task:\n  CREATED: %T\n\t%a\n\n\t%?\n",
						target = meetingNotesTarget,
					},
					mp = {
						description = "progress",
						template = "\n* TODO %^{header} :progress:\n  CREATED: %T\n\t%a\n\n\t%?\n",
						target = meetingNotesTarget,
					},
					mq = {
						description = "question",
						template = "\n* TODO %^{header} :question:\n  CREATED: %T\n\t%a\n\n\t%?\n",
						target = meetingNotesTarget,
					},
				},
			})
		end,
	},
	{
		"lukas-reineke/headlines.nvim",
		event = "VeryLazy",
		ft = { "org", "markdown" },
		dependencies = "nvim-treesitter/nvim-treesitter",
		opts = {
			markdown = {
				bullets = { "◉", "○", "✸", "✿" },
				headline_highlights = false,
			},
			org = {
				fat_headlines = false,
				headline_highlights = { "Headline" },
			},
		},
	},
	{
		"wallpants/github-preview.nvim",
		cmd = { "GithubPreviewToggle" },
		keys = { "<leader>mpt" },
		opts = {
			single_file = true,
		},
		config = function(_, opts)
			local gpreview = require("github-preview")
			gpreview.setup(opts)

			local fns = gpreview.fns
			vim.keymap.set("n", "<leader>mpt", fns.toggle)
			vim.keymap.set("n", "<leader>mps", fns.single_file_toggle)
			vim.keymap.set("n", "<leader>mpd", fns.details_tags_toggle)
		end,
	},
}
