local set = vim.keymap.set
local opts = { noremap = true }

-- MAPS
vim.g.mapleader = " " -- make spacebar the leader key

set('v', '>', '>gv', opts) -- keep current selection after tab indent
set('v', '<', '<gv', opts) -- keep current selection after tab indent

-- split window horizontally
set(
  'n',
  '<Leader>ss',
  ':split<Return><C-w>w',
  opts
)

-- split window vertically
set(
  'n',
  '<Leader>sv',
  ':vsplit<Return><C-w>w',
  opts
)

-- move to next window
set('n', '<Leader><Space>', '<C-w>w', opts)

-- remove search highlight
set('n', '<Leader>h', ':noh<cr>', opts)

-- $ goes to last character of line instead of end of line
set('n', '<Leader>$', 'g_', opts)

-- close window
set('n', '<Leader>x', '<C-w>q', opts)

-- reload all buffers
set('n', '<Leader>r', 'bufdo e!<cr>', opts)
