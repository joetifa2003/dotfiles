local map = vim.keymap.set

return function(buffer)
	map("n", "<leader>fm", function()
		require("conform").format()
	end, { desc = "File Format with conform", buffer = buffer })

	map("n", "gr", function()
		require("telescope.builtin").lsp_references({})
	end, { desc = "Telescope lsp references", buffer = buffer })

	map("n", "<leader>la", vim.lsp.buf.code_action, { desc = "Code actions", buffer = buffer })

	map("n", "<leader>ld", vim.diagnostic.open_float, { desc = "Open diagnostics under cursor", buffer = buffer })

	map("n", "<leader>ls", function()
		require("telescope.builtin").lsp_document_symbols({})
	end, { desc = "Telescope document symbols", buffer = buffer })

	map("n", "<leader>lws", function()
		require("telescope.builtin").lsp_document_symbols({})
	end, { desc = "Telescope workspace document symbols", buffer = buffer })

	map("n", "<leader>lwd", function()
		require("telescope.builtin").diagnostics({})
	end, { desc = "Telescope workspace diagnostics", buffer = buffer })

	map("n", "<leader>lcd", function()
		require("telescope.builtin").diagnostics({ bufnr = 0 })
	end, { desc = "Telescope current diagnostics", buffer = buffer })

	map("n", "gi", function()
		require("telescope.builtin").lsp_implementations({})
	end, { desc = "Telescope lsp implementations", buffer = buffer })

	map("n", "<leader>lh", function()
		vim.lsp.inlay_hint.enable(0, not vim.lsp.inlay_hint.is_enabled(0))
	end, { desc = "Toggle inlay hints", buffer = buffer })
end
