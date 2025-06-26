return {
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    enabled = true,
    config = function()
      require('kanagawa').setup {
        compile = true, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = false },
        functionStyle = {},
        keywordStyle = { italic = false },
        statementStyle = { bold = false },
        typeStyle = {},
        transparent = true,
        dimInactive = false,
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        overrides = function()
          return {
            BlinkCmpMenu = { bg = '#12120f' },
          }
        end,
      }

      vim.cmd.colorscheme 'kanagawa-dragon'
    end,
  },
  -- {
  --   'thesimonho/kanagawa-paper.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   init = function()
  --     vim.cmd.colorscheme 'kanagawa-paper-ink'
  --   end,
  --   opts = {
  --     transparent = true,
  --     overrides = function()
  --       return {
  --         BlinkCmpMenu = { bg = '#12120f' },
  --       }
  --     end,
  --   },
  -- },
}
