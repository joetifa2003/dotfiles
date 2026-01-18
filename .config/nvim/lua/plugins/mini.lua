return {
  {
    'echasnovski/mini.nvim',
    config = function()
      require('mini.comment').setup()

      local statusline = require 'mini.statusline'
      statusline.setup { use_icons = vim.g.have_nerd_font }
      statusline.section_location = function()
        return '%2l:%-2v'
      end

      statusline.inactive = function() end

      require('mini.pairs').setup()

      local hipatterns = require 'mini.hipatterns'
      hipatterns.setup {
        highlighters = {
          hex_color = hipatterns.gen_highlighter.hex_color(),
        },
      }
    end,
  },
}
