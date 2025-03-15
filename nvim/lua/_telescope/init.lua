require('telescope').setup({
  extensions = {
    file_browser = {
      -- use telescope by default
      hijack_netrw = true
    }
  }
})
