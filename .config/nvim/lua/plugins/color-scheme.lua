local function source_matugen()
  -- Update this with the location of your output file
  local matugen_path = os.getenv 'HOME' .. '/.config/nvim/matugen.lua' -- dofile doesn't expand $HOME or ~

  local file, err = io.open(matugen_path, 'r')
  -- If the matugen file does not exist (yet or at all), we must initialize a color scheme ourselves
  if err ~= nil then
    -- Some placeholder theme, this will be overwritten once matugen kicks in
    vim.cmd 'colorscheme base16-catppuccin-mocha'

    -- Optionally print something to the user
    vim.print "A matugen style file was not found, but that's okay! The colorscheme will dynamically change if matugen runs!"
  else
    dofile(matugen_path)
    io.close(file)
  end
end

return {
  -- {
  --   'RRethy/base16-nvim',
  --   priority = 1000,
  --   config = function()
  --     source_matugen()
  --
  --     vim.api.nvim_create_autocmd('Signal', {
  --       pattern = 'SIGUSR1',
  --       callback = source_matugen,
  --     })
  --   end,
  -- },
  {
    'ramojus/mellifluous.nvim',
    priority = 10000,
    config = function()
      require('mellifluous').setup {} -- optional, see configuration section.
      vim.cmd 'colorscheme mellifluous'
    end,
  },
  -- {
  --   'rebelot/kanagawa.nvim',
  --   priority = 1000,
  --   enabled = true,
  --   config = function()
  --     require('kanagawa').setup {
  --       compile = true, -- enable compiling the colorscheme
  --       undercurl = true, -- enable undercurls
  --       commentStyle = { italic = false },
  --       functionStyle = {},
  --       keywordStyle = { italic = false },
  --       statementStyle = { bold = false },
  --       typeStyle = {},
  --       transparent = true,
  --       dimInactive = false,
  --       terminalColors = true, -- define vim.g.terminal_color_{0,17}
  --       overrides = function()
  --         return {}
  --       end,
  --     }
  --
  --     vim.cmd.colorscheme 'kanagawa-dragon'
  --   end,
  -- },
}
