show_host() {
  local index=$1
  local icon=$(get_tmux_option "@catppuccin_host_icon" "󰒋")
  local color=$(get_tmux_option "@catppuccin_host_color" "$thm_magenta")
  local actual_host=$(tmux display-message -p "#H")

if [ "$actual_host" != "MacBook-Pro-de-Gael.local" ] && [ "$actual_host" != "MBP-de-Gael.local" ]; then
  local text=$(get_tmux_option "@catppuccin_host_text" "#H")
  local module=$(build_status_module "$index" "$icon" "$color" "$text")
  echo "$module"
fi

