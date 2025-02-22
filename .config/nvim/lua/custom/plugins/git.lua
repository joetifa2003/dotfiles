return {
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
    keys = {
      {
        '<leader>gp',
        '<cmd> Gitsigns preview_hunk <CR>',
        mode = 'n',
        desc = '[Git] Preview hunk',
      },
      {
        '<leader>gb',
        '<cmd> Gitsigns blame_line <CR>',
        mode = 'n',
        desc = '[Git] Blame line',
      },
      {
        '<leader>gB',
        '<cmd> Gitsigns blame <CR>',
        mode = 'n',
        desc = '[Git] Blame History',
      },
    },
  },
  {
    'kdheepak/lazygit.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    keys = {
      {
        '<leader>gg',
        '<cmd> LazyGit <CR>',
        mode = 'n',
        desc = '[LazyGit] Open',
      },
    },
  },
}
