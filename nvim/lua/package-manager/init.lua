return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- icons
  use "nvim-tree/nvim-web-devicons"

  -- nightfox theme
  use "EdenEast/nightfox.nvim"

  -- file explorer
  use "nvim-tree/nvim-tree.lua"
end)
