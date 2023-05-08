return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- nightfox theme
  use "EdenEast/nightfox.nvim"

  -- file explorer
  use "nvim-telescope/telescope.nvim"
  use "nvim-lua/plenary.nvim"
  use {
    "nvim-telescope/telescope-file-browser.nvim",
        requires = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim"
        }
  }
end)
