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
set('v', '<Leader>$', 'g_', opts)

-- close window
set('n', '<Leader>x', '<C-w>q', opts)

-- reload all buffers
set('n', '<Leader>r', 'bufdo e!<cr>', opts)

-- toggle file explorer in current path
set('n', '<Leader>e', ':Telescope file_browser path=%:p:h select_buffer=true<CR>', opts)

-- toggle file explorer in project path
set('n', '<Leader>E', ':Telescope file_browser<CR>', opts)

-- open file browser
set('n', '<Leader>pf', ':Telescope find_files hidden=true<cr>', opts)

-- open git file browser
set('n', '<C-p>', ':Telescope git_files<cr>', opts)

-- open live grep search
set('n', '<C-f>', ':Telescope live_grep<cr>', opts)

-- bufferline pick buffer
set('n', '<Leader>b', ':BufferLinePick<cr>', opts)

-- bufferline close buffer
set('n', '<Leader>B', ':BufferLinePickClose<cr>', opts)
