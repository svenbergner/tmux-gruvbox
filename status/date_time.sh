show_date_time() {
  local index=$1
  local icon="$(get_tmux_option "@gruvbox_date_time_icon" "󰃰")"
  local color="$(get_tmux_option "@gruvbox_date_time_color" "$thm_blue")"
  local text="$(get_tmux_option "@gruvbox_date_time_text" "%d.%m.%y %H:%M")"

  local module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
