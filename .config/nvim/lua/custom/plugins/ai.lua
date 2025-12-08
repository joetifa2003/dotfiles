return {
  -- {
  --   'supermaven-inc/supermaven-nvim',
  --   event = 'BufReadPost',
  --   config = function()
  --     require('supermaven-nvim').setup {
  --       keymaps = {
  --         accept_suggestion = '<M-g>',
  --         clear_suggestion = '<M-x>',
  --         accept_word = '<M-w>',
  --       },
  --       log_level = 'off',
  --     }
  --   end,
  -- },
  {
    'zbirenbaum/copilot.lua',
    dependencies = {},
    config = function()
      require('copilot').setup {
        suggestion = {
          enabled = true,
          auto_trigger = true,
          hide_during_completion = false,
          keymap = {
            accept = '<M-g>',
            accept_word = '<M-w>',
            accept_line = '<M-l>',
            next = '<M-j>',
            prev = '<M-k>',
            dismiss = '<M-x>',
          },
        },
      }
    end,
  },
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'nvim-lua/plenary.nvim', branch = 'master' },
    },
    build = 'make tiktoken',
    opts = {
      model = 'gpt-5-mini',
    },
  },
}
