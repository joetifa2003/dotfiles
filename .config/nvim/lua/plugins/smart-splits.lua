return {
  'mrjones2014/smart-splits.nvim',
  opts = {
    at_edge = function(ctx)
      if vim.env.HERDR_ENV ~= '1' or not vim.env.HERDR_PANE_ID then
        ctx.wrap()
        return
      end

      local job_id = vim.fn.jobstart({
        vim.env.HERDR_BIN_PATH or 'herdr',
        'pane',
        'focus',
        '--direction',
        ctx.direction,
        '--pane',
        vim.env.HERDR_PANE_ID,
      }, { detach = true })

      if job_id <= 0 then
        ctx.wrap()
      end
    end,
  },
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
