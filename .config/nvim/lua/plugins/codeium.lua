return {
	"Exafunction/codeium.vim",
	lazy = false,
	enabled = true,
	config = function()
		vim.keymap.set("i", "<C-g>", function()
			return vim.fn["codeium#Accept"]()
		end, { expr = true })
		vim.keymap.set("i", "<C-j>", function()
			return vim.fn["codeium#CycleCompletions"](1)
		end, { expr = true })
		vim.keymap.set("i", "<C-k>", function()
			return vim.fn["codeium#CycleCompletions"](-1)
		end, { expr = true })
	end,
}
