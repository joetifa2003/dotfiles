require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", "<leader>fm", function()
	require("conform").format()
end, { desc = "File Format with conform" })

map("n", "]b", function()
	require("nvchad.tabufline").next()
end, { desc = "Goto next buffer" })

map("n", "[b", function()
	require("nvchad.tabufline").prev()
end, { desc = "Goto prev buffer" })

map("n", "<leader>e", "<cmd> NvimTreeToggle <CR>", { desc = "Toggle file tree" })

map("n", "<leader>la", vim.lsp.buf.code_action, { desc = "Code actions" })
map("n", "<leader>ld", vim.diagnostic.open_float, { desc = "Open diagnostics under cursor" })

map("n", "<F5>", require("dap").continue)
map("n", "<F9>", require("dap").toggle_breakpoint)
map("n", "<F10>", require("dap").step_over)
map("n", "<F11>", require("dap").step_into)
map("n", "<F12>", require("dap").step_out)

map("n", "<leader>ls", function()
	require("telescope.builtin").lsp_document_symbols({})
end)
map("n", "<leader>lws", function()
	require("telescope.builtin").lsp_document_symbols({})
end)
map("n", "<leader>lD", function()
	require("telescope.builtin").diagnostics({})
end)
map("n", "<leader>lcd", function()
	require("telescope.builtin").diagnostics({ bufnr = 0 })
end)
map("n", "gr", function()
	require("telescope.builtin").lsp_references({})
end)
map("n", "gi", function()
	require("telescope.builtin").lsp_implementations({})
end)

map("n", "<leader>gg", function()
	vim.cmd("LazyGit")
end, { desc = "Open lazygit" })

map("n", "<A-h>", require("smart-splits").resize_left)
map("n", "<A-l>", require("smart-splits").resize_right)
map("n", "<A-k>", require("smart-splits").resize_up)
map("n", "<A-j>", require("smart-splits").resize_down)
map("n", "<C-h>", require("smart-splits").move_cursor_left)
map("n", "<C-l>", require("smart-splits").move_cursor_right)
map("n", "<C-k>", require("smart-splits").move_cursor_up)
map("n", "<C-j>", require("smart-splits").move_cursor_down)

map("n", "<leader>a", require("grapple").tag)
map("n", "<leader>h", require("grapple").toggle_tags)
map("n", "]]", require("grapple").cycle_forward)
map("n", "]]", require("grapple").cycle_backward)
