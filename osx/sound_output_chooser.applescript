set output to system attribute "OUTPUT"
tell application "System Preferences" to activate
tell application "System Events"
	get properties
	tell application "System Preferences"
		reveal anchor "output" of pane id "com.apple.preference.sound"
	end tell
	delay 1
	tell application "System Events" to tell process "System Preferences"
		tell table 1 of scroll area 1 of tab group 1 of window 1
			select (row 1 where value of text field 1 is output)
		end tell
	end tell
end tell
quit application "System Preferences"
