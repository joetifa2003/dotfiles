local HEIGHT_RATIO = 0.8
local WIDTH_RATIO = 0.5

return {
  'nvim-tree/nvim-tree.lua',
  keys = {
    {
      '<leader>e',
      '<cmd> NvimTreeToggle <CR>',
      mode = 'n',
      desc = '[O]pen nvim tree',
    },
  },
  opts = {
    view = {
      float = {
        enable = true,
        open_win_config = function()
          local screen_w = vim.opt.columns:get()
          local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
          local window_w = screen_w * WIDTH_RATIO
          local window_h = screen_h * HEIGHT_RATIO
          local window_w_int = math.floor(window_w)
          local window_h_int = math.floor(window_h)
          local center_x = (screen_w - window_w) / 2
          local center_y = ((vim.opt.lines:get() - window_h) / 2) - vim.opt.cmdheight:get()
          return {
            border = 'rounded',
            relative = 'editor',
            row = center_y,
            col = center_x,
            width = window_w_int,
            height = window_h_int,
          }
        end,
      },
      -- width = function()
      --   return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
      -- end,
    },
    git = {
      enable = true,
      -- ignore = false,
      -- timeout = 500,
    },

    renderer = {
      highlight_git = true,
      icons = {
        show = {
          git = true,
        },
      },
    },

    update_focused_file = {
      enable = true,
    },

    on_attach = function(bufnr)
      local api = require 'nvim-tree.api'

      local function opts(desc)
        return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      -- default mappings
      api.config.mappings.default_on_attach(bufnr)

      -- custom mappings
      vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts 'Up')
      vim.keymap.set('n', 'l', api.node.open.edit, opts 'Up')
    end,
  },
}
