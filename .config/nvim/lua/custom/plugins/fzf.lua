return {
  {
    'ibhagwan/fzf-lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      keymap = {
        builtin = {
          ['<F1>'] = 'toggle-help',
          ['<F2>'] = 'toggle-fullscreen',
          -- Only valid with the 'builtin' previewer
          ['<F3>'] = 'toggle-preview-wrap',
          ['<F4>'] = 'toggle-preview',
          ['<F5>'] = 'toggle-preview-ccw',
          ['<F6>'] = 'toggle-preview-cw',
          ['<C-d>'] = 'preview-page-down',
          ['<C-u>'] = 'preview-page-up',
          ['<S-left>'] = 'preview-page-reset',
        },
        fzf = {
          ['ctrl-z'] = 'abort',
          ['ctrl-f'] = 'half-page-down',
          ['ctrl-b'] = 'half-page-up',
          ['ctrl-a'] = 'beginning-of-line',
          ['ctrl-e'] = 'end-of-line',
          ['alt-a'] = 'toggle-all',
          -- Only valid with fzf previewers (bat/cat/git/etc)
          ['f3'] = 'toggle-preview-wrap',
          ['f4'] = 'toggle-preview',
          ['ctrl-d'] = 'preview-page-down',
          ['ctrl-u'] = 'preview-page-up',
          ['ctrl-q'] = 'select-all+accept',
        },
      },
    },
    keys = {
      {
        '<leader>fw',
        '<cmd> FzfLua live_grep <CR>',
        desc = 'live grep',
      },
      {
        '<leader>flw',
        '<cmd> FzfLua blines <CR>',
        desc = 'live grep document',
      },
      {
        '<leader>ff',
        '<cmd> FzfLua files <CR>',
        desc = 'live grep',
      },
      {
        'gd',
        '<cmd> FzfLua lsp_definitions <CR>',
        desc = 'goto definitions',
      },
      {
        'gr',
        '<cmd> FzfLua lsp_references <CR>',
        desc = 'goto references',
      },
      {
        'gi',
        '<cmd> FzfLua lsp_implementations <CR>',
        desc = 'goto implementations',
      },
      {
        '<leader>lwd',
        '<cmd> FzfLua diagnostics_workspace <CR>',
        desc = 'workspace diagnostics',
      },
      {
        '<leader>lcd',
        '<cmd> FzfLua diagnostics_document <CR>',
        desc = 'current diagnostics',
      },
      {
        '<leader>ls',
        '<cmd> FzfLua lsp_document_symbols <CR>',
        desc = 'current symbols',
      },
      {
        '<leader>lws',
        '<cmd> FzfLua lsp_workspace_symbols <CR>',
        desc = 'workspace symbols',
      },
      {
        '<leader>fb',
        '<cmd> FzfLua buffers <CR>',
        desc = 'find buffers',
      },
      {
        '<leader>gs',
        '<cmd> FzfLua git_status <CR>',
        desc = 'git status',
      },
    },
  },
}
