(*
OPEN IN TYPORA
This Script powers the Open In Typora Applescript Application of the same name.
*)
use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

on run
	tell application "Finder"
		if openFiles then
			if selection is {} then
				set finderSelection to folder of the front window as string
			else
				set finderSelection to selection as alias list
			end if
		else
			set finderSelection to folder of the front window as string
		end if
	end tell
	typora(finderSelection)
end run

-- script was drag-and-dropped onto
on open (theList)
	typora(theList)
end open

-- open in Sublime
on typora(listOfAliases)
	tell application "Typora"
		open listOfAliases
	end tell
end typora
