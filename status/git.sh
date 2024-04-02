show_git() {
  local index=$1
  local text=$(get_tmux_option "@gruvbox_git_text" '#( gitmux -cfg $HOME/.gitmux.conf "#{b:pane_current_path}" )')

  local icon=$(get_tmux_option "@gruvbox_git_icon" "")
  local color=$(get_tmux_option "@gruvbox_git_color" "$thm_red")
  local module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
