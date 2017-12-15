# If not running interactively, don't do anything
case $- in
  *i*) ;;
  *) return;;
esac

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

if [[ -f $HOME/.bash_profile ]]; then
  source $HOME/.bash_profile
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
