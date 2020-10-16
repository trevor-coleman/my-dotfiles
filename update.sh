ECHO Removing existing files.

rm $HOME/.config/starship.toml
rm $HOME/.zshrc
rm $HOME/.bash_profile

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
