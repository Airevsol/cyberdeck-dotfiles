# CYBERDECK // .profile
# boot sequence for the shell. loads the deck's tools and prompt.

[ -f "$HOME/.config/cyberdeck/prompt.sh" ] && . "$HOME/.config/cyberdeck/prompt.sh"

export PATH="$HOME/.local/bin:$PATH"
