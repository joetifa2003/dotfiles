return {
  'folke/snacks.nvim',
  ---@type snacks.Config
  lazy = false,
  opts = {
    input = {},
    notifier = {},
    picker = {
      ui_select = true,
      previewers = {
        file = {
          max_line_length = 2000,
        },
      },
      matcher = {
        frecency = true,
      },
    },
    dashboard = {
      sections = {
        {
          section = 'terminal',
          cmd = 'chafa ~/dotfiles/wallpapers/002.jpg --format symbols --symbols vhalf --size 60x20 --stretch; sleep .1',
          height = 17,
          padding = 2,
        },
        {
          { section = 'keys', gap = 1, padding = 2 },
          { section = 'startup' },
        },
      },
    },
  },
  keys = {
    {
      '<leader>fw',
      function()
        Snacks.picker.grep()
      end,
    },
    {
      '<leader>ff',
      function()
        Snacks.picker.files()
      end,
    },
    {
      '<leader>lcd',
      function()
        Snacks.picker.diagnostics_buffer()
      end,
    },
    {
      '<leader>lwd',
      function()
        Snacks.picker.diagnostics()
      end,
    },
    {
      '<leader>ls',
      function()
        Snacks.picker.lsp_symbols()
      end,
    },
    {
      '<leader>lws',
      function()
        Snacks.picker.lsp_workspace_symbols()
      end,
    },
    {
      '<leader>fb',
      function()
        Snacks.picker.buffers {
          on_show = function()
            vim.cmd 'stopinsert'
          end,
        }
      end,
    },
    {
      '<leader>gs',
      function()
        Snacks.picker.git_status {
          on_show = function()
            vim.cmd 'stopinsert'
          end,
        }
      end,
    },
    {
      'gd',
      function()
        Snacks.picker.lsp_definitions()
      end,
    },
    {
      'gr',
      function()
        Snacks.picker.lsp_references {
          on_show = function()
            vim.cmd 'stopinsert'
          end,
        }
      end,
    },
    {
      'gi',
      function()
        Snacks.picker.lsp_implementations {
          on_show = function()
            vim.cmd 'stopinsert'
          end,
        }
      end,
    },
    {
      '<leader>gg',
      function()
        Snacks.lazygit()
      end,
    },
    {
      '<leader>nth',
      function()
        Snacks.notifier.show_history()
      end,
    },

    {
      '<leader>.',
      function()
        Snacks.scratch()
      end,
      desc = 'Toggle Scratch Buffer',
    },
  },
}
