local map = vim.keymap.set

map('n', ']b', function()
  vim.cmd 'bnext'
end, { desc = 'Goto next buffer' })

map('n', '[b', function()
  vim.cmd 'bprevious'
end, { desc = 'Goto prev buffer' })

map('n', '<leader>x', function()
  vim.cmd 'bd'
end, { desc = '[C]lose buffer' })

map('n', '<leader>cp', function()
  local full_path = vim.fn.expand '%:p'
  local cwd = vim.fn.getcwd()
  local relative_path = vim.fn.fnamemodify(full_path, ':.' .. cwd .. ':.')
  vim.fn.setreg('+', relative_path)
end, { noremap = true, silent = true })

map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- map('n', '<F5>', require('dap').continue)
-- map('n', '<F9>', require('dap').toggle_breakpoint)
-- map('n', '<F10>', require('dap').step_over)
-- map('n', '<F11>', require('dap').step_into)
-- map('n', '<F12>', require('dap').step_out)
--
-- map('n', '<A-h>', require('smart-splits').resize_left)
-- map('n', '<A-l>', require('smart-splits').resize_right)
-- map('n', '<A-k>', require('smart-splits').resize_up)
-- map('n', '<A-j>', require('smart-splits').resize_down)
-- map('n', '<C-h>', require('smart-splits').move_cursor_left)
-- map('n', '<C-l>', require('smart-splits').move_cursor_right)
-- map('n', '<C-k>', require('smart-splits').move_cursor_up)
-- map('n', '<C-j>', require('smart-splits').move_cursor_down)
--
-- map('n', '<leader>a', require('grapple').tag)
-- map('n', '<leader>h', require('grapple').toggle_tags)
-- map('n', ']]', require('grapple').cycle_forward)
-- map('n', '[[', require('grapple').cycle_backward)
