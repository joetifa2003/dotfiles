return {
  { 'andweeb/presence.nvim', lazy = false },
  { 'wakatime/vim-wakatime', lazy = false },
  {
    'windwp/nvim-ts-autotag',
    ft = { 'tsx', 'markdown', 'svelte', 'astro' },
    opts = {},
  },
  {
    'folke/todo-comments.nvim',
    event = 'BufReadPost',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {},
  },
}
