{ pkgs, rofi-adi1090x-themes }:
{
  rofi-powermenu = pkgs.writeScriptBin "rofi-powermenu" ''
  #!$(pkgs.bash)/bin/bash
  THEMES_PATH=${rofi-adi1090x-themes}/share/rofi/powermenu/type-1/
  theme=style-3


shutdown=' Shutdown'
reboot=' Reboot'
yes=' Yes'
no=' No'

rofi_cmd() {
	${pkgs.rofi-wayland}/bin/rofi -dmenu \
		-p "$host" \
		-theme $THEMES_PATH/$theme.rasi
}

confirm_cmd() {
	${pkgs.rofi-wayland}/bin/rofi -theme-str 'window {location: center; anchor: center; fullscreen: false; width: 250px;}' \
		-theme-str 'mainbox {children: [ "message", "listview" ];}' \
		-theme-str 'listview {columns: 2; lines: 1;}' \
		-theme-str 'element-text {horizontal-align: 0.5;}' \
		-theme-str 'textbox {horizontal-align: 0.5;}' \
		-dmenu \
		-p 'Confirmation' \
		-mesg 'Are you Sure?' \
		-theme $THEMES_PATH/$theme.rasi
}

confirm_exit() {
	echo -e "$yes\n$no" | confirm_cmd
}

run_rofi() {
	echo -e "$shutdown\n$reboot" | rofi_cmd
}

run_cmd() {
	selected="$(confirm_exit)"
	if [[ "$selected" == "$yes" ]]; then
		if [[ $1 == '--shutdown' ]]; then
				poweroff
		elif [[ $1 == '--reboot' ]]; then
				reboot
		fi
	else
		exit 0
	fi
}

  chosen="$(run_rofi)"
  case $chosen in
    $shutdown)
		run_cmd --shutdown;;
    $reboot)
		run_cmd --reboot;;
esac
'';
}