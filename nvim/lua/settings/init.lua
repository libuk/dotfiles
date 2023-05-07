local set = vim.opt

-- SPACES & TABS
local _tablength = 4
set.tabstop=_tablength      -- number of visual spaces per TAB
set.softtabstop=_tablength  -- number of spaces in tab when editing
set.shiftwidth=_tablength   -- indent of spaces on enter
set.expandtab = true        -- tabs are spaces

-- UI LAYOUT
set.relativenumber = true  -- show relative line numbers
set.cursorline = true      -- highlight current line

-- MISC
set.mouse=a  -- enable mouse interactions
