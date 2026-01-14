ALACRITTY_DIR="$HOME/.config/alacritty"
THEME_FILE="$ALACRITTY_DIR/theme.toml"

is_dark=$(osascript -e 'tell application "System Events" to tell appearance preferences to get dark mode')

if [ "$is_dark" = "true" ]; then
    CURRENT_THEME="dark"
else
    CURRENT_THEME="light"
fi

if [ ! -f "$THEME_FILE" ] || ! grep -q "themes/$CURRENT_THEME.toml" "$THEME_FILE" 2>/dev/null; then
    echo "# imported from themes/$CURRENT_THEME.toml" > "$THEME_FILE"
    cat "$ALACRITTY_DIR/themes/$CURRENT_THEME.toml" >> "$THEME_FILE"
fi
