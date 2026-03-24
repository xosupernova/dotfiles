#!/usr/bin/env zsh

# Path to temporary cover art folder
COVER_DIR="/tmp/fastfetch_spotify"
mkdir -p "$COVER_DIR"

# Clear old covers to prevent storage bloat and stale images
# Using (N) glob qualifier to prevent "no matches found" error if dir is empty
# or simply checking for file existence before rm
rm -rf "$COVER_DIR"/*(N)

# Clear fastfetch internal logo cache
rm -rf ~/.cache/fastfetch/logos 2>/dev/null

# Determine terminal type for protocol selection
if [[ "$TERM" == "xterm-kitty" ]]; then
    TERM_TYPE="kitty"
    CONFIG_PATH="$HOME/.dotfiles/fastfetch/kitty.jsonc"
elif [[ -n "$KONSOLE_VERSION" ]]; then
    TERM_TYPE="kitty"
    CONFIG_PATH="$HOME/.dotfiles/fastfetch/konsole.jsonc"
else
    fastfetch
    exit 0
fi

# Check if Spotify is running
if pgrep -x "spotify" > /dev/null || pgrep -f "spotify" > /dev/null; then
    ART_URL=$(playerctl -p spotify metadata mpris:artUrl 2>/dev/null)

    if [[ -n "$ART_URL" ]]; then
        # Use a unique filename (timestamp) to bypass any path-based caching in Konsole/Fastfetch
        TIMESTAMP=$(date +%s)
        CURRENT_COVER="$COVER_DIR/cover_$TIMESTAMP.png"

        # Download the image
        curl -s --max-time 2 "$ART_URL" -o "$CURRENT_COVER"
        
        # Run fastfetch with the unique local path
        fastfetch -c "$CONFIG_PATH" --logo "$CURRENT_COVER" --logo-type "$TERM_TYPE"
    else
        fastfetch -c "$CONFIG_PATH"
    fi
else
    fastfetch -c "$CONFIG_PATH"
fi