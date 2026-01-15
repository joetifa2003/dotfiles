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
    {
      '<M-h>',
      function()
        require('smart-splits').resize_left()
      end,
      desc = 'Resize left split',
    },
    {
      '<M-l>',
      function()
        require('smart-splits').resize_right()
      end,
      desc = 'Resize right split',
    },
    {
      '<M-j>',
      function()
        require('smart-splits').resize_down()
      end,
      desc = 'Resize down split',
    },
    {
      '<M-k>',
      function()
        require('smart-splits').resize_up()
      end,
      desc = 'Resize up split',
    },
  },
}
