# Adding user binaries
export PATH="$HOME/bin:$PATH"

# Load the shell dotfiles, and then some:
for file in ~/.{bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;