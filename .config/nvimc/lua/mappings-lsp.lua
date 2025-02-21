return function(buffer)
  local map = function(keys, func, desc, mode)
    mode = mode or 'n'
    vim.keymap.set(mode, keys, func, { buffer = buffer, desc = '[LSP]' .. desc })
  end

  map('gd', '<cmd> FzfLua lsp_definitions <CR>', 'goto definition')

  map('gr', '<cmd> FzfLua lsp_references <CR>', 'goto references')

  map('gi', '<cmd> FzfLua lsp_implementations', 'goto implementation')

  map('<leader>lwd', '<cmd> FzfLua diagnostics_workspace', 'workspace diagnostics')

  map('<leader>lcd', '<cmd> FzfLua diagnostics_document', 'current diagnostics')

  map('<leader>ld', vim.diagnostic.open_float, 'open diagnostics under cursor')

  map('<leader>ls', '<cmd> FzfLua lsp_document_symbols', 'document symbols')

  map('<leader>lws', '<cmd> FzfLua lsp_workspace_symbols', 'workspace document symbols')

  map('<leader>lr', vim.lsp.buf.rename, 'rename')

  map('<leader>la', vim.lsp.buf.code_action, 'code action', { 'n', 'x' })

  map('<leader>fm', function()
    require('conform').format()
  end, 'file format')

  map('<leader>lh', function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
  end, 'toggle inlay hints')
end
