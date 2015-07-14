for file in ~/.{bash_work,bash_prompt,bash_alias,exports}; do
  [[ -r "$file" ]] && [[ -f "$file" ]] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Avoid duplicate history entries
export HISTCONTROL=ignoredups:erasedups

# Increase size of history file
HISTSIZE=5000
HISTFILESIZE=$HISTSIZE

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Save history after every command so we can see it in other sessions
PROMPT_COMMAND="history -a;history -c;history -r;$PROMPT_COMMAND"

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
  shopt -s "$option" 2> /dev/null
done

# NVM
export NVM_DIR=~/.nvm

# Use brew prefix to source nvm
if [[ -n $(type -p brew) ]]; then
  source $(brew --prefix nvm)/nvm.sh
fi
