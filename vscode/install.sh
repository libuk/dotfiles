install() {
  brew cask install visual-studio-code

  code --install-extension eamodio.gitlens
  code --install-extension Equinusocio.vsc-material-theme
  code --install-extension esbenp.prettier-vscode
  code --install-extension justusadam.language-haskell
  code --install-extension mhutchie.git-graph
  code --install-extension mikestead.dotenv
  code --install-extension octref.vetur
  code --install-extension PKief.material-icon-theme
  code --install-extension sbrink.elm
  code --install-extension vscodevim.vim
  code --install-extension wix.vscode-import-cost
}

install
