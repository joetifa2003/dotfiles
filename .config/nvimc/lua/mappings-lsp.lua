return function(buffer)
  local map = function(keys, func, desc, mode)
    mode = mode or 'n'
    vim.keymap.set(mode, keys, func, { buffer = buffer, desc = '[LSP]' .. desc })
  end

  map('gd', require('telescope.builtin').lsp_definitions, 'goto definition')

  map('gr', require('telescope.builtin').lsp_references, 'goto references')

  map('gi', require('telescope.builtin').lsp_implementations, 'goto implementation')

  map('<leader>ld', vim.diagnostic.open_float, 'open diagnostics under cursor')

  map('<leader>lwd', function()
    require('telescope.builtin').diagnostics {}
  end, 'telescope workspace diagnostics')

  map('<leader>lcd', function()
    require('telescope.builtin').diagnostics { bufnr = 0 }
  end, 'telescope current diagnostics')

  map('<leader>ls', function()
    require('telescope.builtin').lsp_document_symbols {}
  end, 'telescope document symbols')

  map('<leader>lws', function()
    require('telescope.builtin').lsp_document_symbols {}
  end, 'telescope workspace document symbols')

  map('<leader>lr', vim.lsp.buf.rename, 'rename')

  map('<leader>la', vim.lsp.buf.code_action, 'code action', { 'n', 'x' })

  map('<leader>fm', function()
    require('conform').format()
  end, 'file format')

  map('<leader>lh', function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
  end, 'toggle inlay hints')
end
