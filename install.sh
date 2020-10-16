

ECHO installing zsh
brew install zsh
chsh -s /usr/local/bin/zsh
ECHO installing oh-myzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ECHO installing starship
curl -fsSL https://starship.rs/install.sh | bash
ECHO installing Sublime Text
brew cask install sublime-text 

mkdir $HOME/bin
PATH=$PATH:$HOME/bin
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" $HOME/bin/subl
Echo installing iterm2
brew cask install iterm2

ECHO installing fira code
brew tap homebrew/cask-fonts
brew cask install font-fira-code
brew cask install font-fira-code-nerd-font

ECHO Removing existing files.
rm $HOME/.config/starship.toml
rm $HOME/.zshrc
rm $HOME/.bash_profile
rm $HOME/Library/Preferences/com.googlecode.iterm2.plist
rm "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"

ECHO Creating Symlinks.
ln Preferences.sublime-settings "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
ln com.googlecode.iterm2.plist $HOME/Library/Preferences/com.googlecode.iterm2.plist
ln .zshrc $HOME/.zshrc
ln .bash_profile $HOME/.bash_profile
ln .wave $HOME/.wave
mkdir $HOME/.config
ln starship.toml $HOME/.config/starship.toml

cat .wave
ECHO
ECHO Done!
