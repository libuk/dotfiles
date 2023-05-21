return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- nightfox theme
  use "EdenEast/nightfox.nvim"

  -- file explorer
  use {
    "nvim-telescope/telescope-file-browser.nvim",
        requires = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim"
        }
  }

  -- lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- bufferline
  use {
    'akinsho/bufferline.nvim',
    tag = "*",
    requires = 'nvim-tree/nvim-web-devicons'
  }
end)
