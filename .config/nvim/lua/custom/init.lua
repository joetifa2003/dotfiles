-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
vim.g.nvimtree_side = "right"
vim.opt.cmdheight = 0
vim.opt.title = true

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    vim.lsp.inlay_hint.enable(0, true)
  end,
})

-- local client_id = vim.lsp.start {
--   name = "Weaver LSP",
--   cmd = { "weaver-lsp" },
--   filetypes = { "wv" },
--   root_dir = vim.fn.getcwd(),
-- }
--
-- vim.api.nvim_create_autocmd("BufEnter", {
--   callback = function()
--     vim.lsp.buf_attach_client(0, client_id)
--   end,
-- })
