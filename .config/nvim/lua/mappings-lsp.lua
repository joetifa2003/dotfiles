return function(buffer)
  local map = function(keys, func, desc, mode)
    mode = mode or 'n'
    vim.keymap.set(mode, keys, func, { buffer = buffer, desc = '[LSP]' .. desc })
  end

  map('K', function()
    vim.lsp.buf.hover()
  end, 'hover window')

  map('<leader>ld', vim.diagnostic.open_float, 'open diagnostics under cursor')

  map('<leader>lr', vim.lsp.buf.rename, 'rename')

  map('<leader>la', vim.lsp.buf.code_action, 'code action', { 'n', 'x' })

  map('<leader>fm', function()
    require('conform').format()
  end, 'file format')

  map('<leader>lh', function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
  end, 'toggle inlay hints')
end
