-- Load vim-plug

-- PLUGINS ( using vim-plug )

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- nightfox theme
Plug("EdenEast/nightfox.nvim")

-- telescope - required by nvim-telescope/telescope-file-browser.nvim
Plug("nvim-telescope/telescope.nvim")

-- plenary - required by nvim-telescope/telescope-file-browser.nvim
Plug("nvim-lua/plenary.nvim")

-- file explorer
Plug("nvim-telescope/telescope-file-browser.nvim")

-- nvim web devicons - required by nvim-lualine/lualine.nvim and akinsho/bufferline.nvim
Plug("nvim-tree/nvim-web-devicons")

-- lualine
Plug("nvim-lualine/lualine.nvim")

-- bufferline
Plug("akinsho/bufferline.nvim", { ["tag"] = "*" })

vim.call('plug#end')
