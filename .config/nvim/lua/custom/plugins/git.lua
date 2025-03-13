return {
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    event = 'BufReadPost',
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
        '<cmd> Gitsigns preview_hunk_inline <CR>',
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
      {
        ']h',
        '<cmd> Gitsigns next_hunk <CR>',
        mode = 'n',
        desc = '[Git] Next Hunk',
      },
      {
        '[h',
        '<cmd> Gitsigns prev_hunk <CR>',
        mode = 'n',
        desc = '[Git] Prev Hunk',
      },
    },
  },
}
