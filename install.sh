ECHO Removing existing files.
rm ~/.config/starship.toml
rm ~/.zshrc
rm ~/.bash_profile
ECHO installing starship
curl -fsSL https://starship.rs/install.sh | bash
ECHO installing Sublime Text
brew cask install sublime-text 
ln Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
Echo installing iterm2
brew cask install iterm2
ln com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
ECHO installing fira code
brew tap homebrew/cask-fonts
brew cask install font-fira-code
brew cask install font-fira-code-nerd-font

ECHO Creating Symlinks.
ln .zshrc ~/.zshrc
ln .bash_profile ~/.bash_profile
ln .wave ~/.wave
mkdir ~/.config
ln starship.toml ~/.config/starship.toml

cat .wave
ECHO
ECHO Done!
