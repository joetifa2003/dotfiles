return {
	{
		"nvim-orgmode/orgmode",
		dependencies = {
			{ "nvim-treesitter/nvim-treesitter", lazy = true },
		},
		event = "VeryLazy",
		config = function()
			require("orgmode").setup_ts_grammar()

			local meetingNotesTarget = "~/orgfiles/meeting-notes/Week %<%V>.org"

			require("orgmode").setup({
				mappings = {
					org = {
						org_return = false,
					},
				},
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
				},
			})
		end,
	},
	{
		"lukas-reineke/headlines.nvim",
		lazy = false,
		dependencies = "nvim-treesitter/nvim-treesitter",
		opts = {
			markdown = {
				bullets = { "◉", "○", "✸", "✿" },
				fat_headlines = false,
			},
			org = {
				fat_headlines = false,
				headline_highlights = { "Headline" },
			},
		},
	},
}
