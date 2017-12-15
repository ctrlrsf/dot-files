for file in ~/.{bash_work,bash_prompt,bash_alias,exports}; do
  [[ -r "$file" ]] && [[ -f "$file" ]] && source "$file"
done
unset file

# Avoid duplicate history entries
export HISTCONTROL=ignoredups:erasedups

# Increase size of history file
HISTSIZE=5000
HISTFILESIZE=$HISTSIZE

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
  shopt -s "$option" 2> /dev/null
done

# Use brew prefix to source nvm
# commented out below because it's slow
#export NVM_DIR=~/.nvm
#mkdir -p "${NVM_DIR}"
#if [[ -n $(type -p brew) ]]; then
#  source $(brew --prefix nvm)/nvm.sh
#fi

export GOPATH=~/gocode
export GO15VENDOREXPERIMENT=1

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Autocompletion helpers
complete -C aws_completer aws

source /usr/local/etc/bash_completion.d/git-completion.bash

GPG_TTY=$(tty)
export GPG_TTY

# Temporary set this so tmux stops complaining on Sierra
export EVENT_NOKQUEUE=1

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
