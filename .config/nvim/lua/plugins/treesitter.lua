local ignoreIndent = { 'jsonnet' }

return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  build = ':TSUpdate',
  config = function()
    vim.api.nvim_create_autocmd('FileType', {
      pattern = {
        'go',
        'javascript',
        'typescript',
        'typescriptreact',
        'json',
        'markdown',
        'hyprlang',
        'jsonc',
        'cue',
        'jsonnet',
        'idl',
        'yuck',
        'gomod',
        'zig',
        'astro',
        'typespec',
        'python',
        'lua',
      },
      callback = function()
        vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        if not vim.tbl_contains(ignoreIndent, vim.bo.filetype) then
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
        vim.treesitter.start()
      end,
    })
  end,
  priority = 5000,
}
