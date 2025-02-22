return {
  {
    'cbochs/grapple.nvim',
    lazy = false,
    opts = {
      win_opts = {
        width = 80,
        height = 20,
      },
    },
    keys = {
      {
        '<leader>h',
        function()
          require('grapple').toggle_tags()
        end,
        mode = 'n',
        desc = '[Grapple] Open',
      },
      {
        '<leader>a',
        function()
          require('grapple').tag()
        end,
        mode = 'n',
        desc = '[Grapple] Add file',
      },
      {
        ']]',
        function()
          require('grapple').cycle_tags('forward', {})
        end,
        mode = 'n',
        desc = '[Grapple] Cycle forward',
      },
      {
        '[[',
        function()
          require('grapple').cycle_tags('backward', {})
        end,
        mode = 'n',
        desc = '[Grapple] Cycle backwards',
      },
    },
  },
}
