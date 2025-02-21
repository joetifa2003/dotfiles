local map = function(key, func, desc, mode)
  local m = mode or 'n'
  vim.keymap.set(m, key, func, { desc = desc })
end

map(']b', function()
  vim.cmd 'bnext'
end, 'goto next buffer')

map('[b', function()
  vim.cmd 'bprevious'
end, 'goto prev buffer')

map('<leader>x', function()
  vim.cmd 'bd'
end, 'close buffer')

map('<leader>cp', function()
  local full_path = vim.fn.expand '%:p'
  local cwd = vim.fn.getcwd()
  local relative_path = vim.fn.fnamemodify(full_path, ':.' .. cwd .. ':.')
  vim.fn.setreg('+', relative_path)
end, 'copy current path')

map('<Esc>', '<cmd>nohlsearch<CR>', 'clear highlight')
