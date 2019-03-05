# Modify `$PATH`

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";
# added by Anaconda3 installer
export PATH="/Users/wassilyminkow/anaconda3/bin:$PATH"


# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


# shopt [-pqsu] [-o] [optname …] Toggle the values of settings controlling optional shell behavior.
# -s Enable (set) each optname.
# -u Disable (unset) each optname.
# -q Suppresses normal output; the return status indicates whether the optname is set or unset. If multiple optname arguments are given with -q, the return status is zero if all optnames are enabled; non-zero otherwise.
# -o Restricts the values of optname to be those defined for the -o option to the set builtin (see The Set Builtin).
# From https://www.gnu.org/software/bash/manual/html_node/The-Shopt-Builtin.html

# If set, Bash matches filenames in a case-insensitive fashion when performing filename expansion (used in pathname expansion).
shopt -s nocaseglob;

# If set, the history list is appended to the file named by the value of the HISTFILE variable when the shell exits, rather than overwriting the file. 
# When the shell starts up, the history is initialized from the file named by the HISTFILE variable (default ~/.bash_history). 
shopt -s histappend;

# If set, minor errors in the spelling of a directory component in a cd command will be corrected. 
# The errors checked for are transposed characters, a missing character, and a character too many. 
# If a correction is found, the corrected path is printed, and the command proceeds. This option is only used by interactive shells.
shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;


# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
	source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
	complete -o default -o nospace -F _git g;
fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;
