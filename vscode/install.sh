install_ext() {
  brew install visual-studio-code

  code --install-extension eamodio.gitlens
  code --install-extension esbenp.prettier-vscode
  code --install-extension fallenwood.vimL
  code --install-extension foxundermoon.shell-format
  code --install-extension mikestead.dotenv
  code --install-extension ms-azuretools.vscode-docker
  code --install-extension redhat.vscode-yaml
  code --install-extension streetsidesoftware.code-spell-checker
  code --install-extension vscode-icons-team.vscode-icons
  code --install-extension vscodevim.vim
  code --install-extension wix.vscode-import-cost
}

configure_settings() {
  defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
}

setup() {
  install_ext
  configure_settings
}

setup
