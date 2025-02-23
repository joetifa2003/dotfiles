return {
  'mrjones2014/smart-splits.nvim',
  keys = {
    {
      '<C-h>',
      function()
        require('smart-splits').move_cursor_left()
      end,
      mode = 'n',
      desc = 'Move to left split',
    },
    {
      '<C-l>',
      function()
        require('smart-splits').move_cursor_right()
      end,
      mode = 'n',
      desc = 'Move to right split',
    },
    {
      '<C-k>',
      function()
        require('smart-splits').move_cursor_up()
      end,
      mode = 'n',
      desc = 'Move up split',
    },
    {
      '<C-j>',
      function()
        require('smart-splits').move_cursor_down()
      end,
      mode = 'n',
      desc = 'Move down split',
    },
  },
}
