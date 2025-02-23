return { -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  config = function()
    require('mini.comment').setup()

    local statusline = require 'mini.statusline'
    statusline.setup { use_icons = vim.g.have_nerd_font }
    statusline.section_location = function()
      return '%2l:%-2v'
    end

    require('mini.pairs').setup()
    require('mini.hipatterns').setup()
  end,
}
