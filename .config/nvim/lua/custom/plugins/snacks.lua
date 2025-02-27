return {
  'folke/snacks.nvim',
  ---@type snacks.Config
  opts = {
    dashboard = {
      sections = {
        {
          section = 'terminal',
          cmd = 'chafa ~/.config/nvim/mountain.jpg --format symbols --symbols vhalf --size 60x17 --stretch; sleep .1',
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
}
