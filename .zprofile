export SHELL_SESSIONS_DISABLE=1

# Set PATH, MANPATH, etc., for Homebrew.
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

# uncomment following line to set Homebrew via its provided script
# eval "$(/opt/homebrew/bin/brew shellenv)"
