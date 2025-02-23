return {
  'supermaven-inc/supermaven-nvim',
  event = 'BufReadPost',
  config = function()
    require('supermaven-nvim').setup {
      keymaps = {
        accept_suggestion = '<M-g>',
        clear_suggestion = '<M-x>',
        accept_word = '<M-w>',
      },
      log_level = 'off',
    }
  end,
}
