#
# Provides Git aliases and functions.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Return if requirements are not found.
if (( ! $+commands[git] )); then
  return 1
fi

# Load dependencies.
pmodload 'helper'

# Get the prefix or use the default.
zstyle -s ':prezto:module:git' aliases '_git_aliases_enabled' || _git_aliases_enabled='no'

if [[ "$_git_aliases_enabled" == "yes" ]]; then
    # Source module files.
    source "${0:h}/alias.zsh"
fi
