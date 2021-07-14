#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CRYPTOMILK_THEME_COMMON_CONFIG_FILE="cryptomilk_common.conf"
CRYPTOMILK_DEFAULT_THEME="cryptomilk_default.conf"
CRYPTOMILK_NO_PATCHED_FONT_THEME="cryptomilk_no_patched_font.conf"
CRYPTOMILK_NO_PATCHED_FONT_OPTION="@cryptomilk_no_patched_font"

main() {
  tmux source-file "$CURRENT_DIR/$CRYPTOMILK_THEME_COMMON_CONFIG_FILE"

  local no_patched_font=$(tmux show-option -gqv "$CRYPTOMILK_NO_PATCHED_FONT_OPTION")

  local theme_file="$CRYPTOMILK_DEFAULT_THEME"
  if [ "$no_patched_font" == "1" ]; then
    theme_file="$CRYPTOMILK_NO_PATCHED_FONT_THEME"
  fi
  tmux source-file "$CURRENT_DIR/$theme_file"

  unset CURRENT_DIR
  unset CRYPTOMILK_THEME_COMMON_CONFIG_FILE
  unset CRYPTOMILK_DEFAULT_THEME
  unset CRYPTOMILK_NO_PATCHED_FONT_THEME
  unset CRYPTOMILK_NO_PATCHED_FONT_OPTION
}

main
