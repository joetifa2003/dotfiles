return {
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    enabled = true,
    config = function()
      require('kanagawa').setup {
        compile = false, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = false },
        functionStyle = {},
        keywordStyle = { italic = false },
        statementStyle = { bold = false },
        typeStyle = {},
        transparent = true,
        dimInactive = false,
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
      }

      vim.cmd.colorscheme 'kanagawa-dragon'
    end,
  },
}
