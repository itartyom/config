#!/usr/bin/env fish

set layout_id (defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleSelectedInputSources | grep "KeyboardLayout ID" | grep -o "[0-9]\+")

if test $layout_id -eq 252
    set abbr ENG
else if test $layout_id -eq 19456
    set abbr RUS
else
    set abbr UNK
end

# NAME приходит от sketchybar; при ручном запуске он пустой
sketchybar --set "$NAME" label="$abbr"
