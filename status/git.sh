show_git() {
  local index=$1
  local icon=$(get_tmux_option "@gruvbox_git_icon" "")

  local color=$(get_tmux_option "@gruvbox_git_color" "$thm_red")
  local text=$(get_tmux_option "@gruvbox_git_text" '#( gitmux "#{b:pane_current_path}" )')

  local module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
