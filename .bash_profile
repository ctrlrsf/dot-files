for file in ~/.{bash_work,bash_prompt,bash_alias,exports}; do
  [[ -r "$file" ]] && [[ -f "$file" ]] && source "$file"
done
unset file
