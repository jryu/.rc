if [[ "$TERM" == screen* ]]; then
  screen_set_window_title () {
    printf '\ek%s\e\\' $(basename $PWD)
  }
  PROMPT_COMMAND="screen_set_window_title; $PROMPT_COMMAND"
fi
