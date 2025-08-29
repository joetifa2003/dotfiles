return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  build = ':TSUpdate',
  config = function()
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'go', 'javascript', 'typescript', 'typescriptreact', 'json', 'markdown', 'hyprlang', 'jsonc' },
      callback = function()
        vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        vim.treesitter.start()
      end,
    })
  end,
  priority = 5000,
}
