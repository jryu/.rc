if [[ "$TERM" == screen* ]]; then
  screen_set_window_title () {
    printf '\ek%s\e\\' $(basename $PWD)
  }
  PROMPT_COMMAND="screen_set_window_title; $PROMPT_COMMAND"
fi

alias git-meld="git difftool --dir-diff --tool=meld"

# Create or attach to a session
tmuxs() {
  tmux new -A -s "$1"
}
