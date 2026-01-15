return {
  'aaronhallaert/advanced-git-search.nvim',
  cmd = { 'AdvancedGitSearch' },
  config = function()
    require('advanced_git_search.snacks').setup {
      -- Insert Config here
    }
  end,
  dependencies = {
    'folke/snacks.nvim',
    'tpope/vim-fugitive',
    'tpope/vim-rhubarb',
    'sindrets/diffview.nvim',
  },
}
