(*
OPEN IN TYPORA
This Script powers the Open In Typora Applescript Application of the same name.
*)
use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

-- This is the handler for when you launch the application
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

-- This is the handler for when you drop a file on the application
-- This will open the folder or files selected in the upmost Finder window
on open (theList)
	typora(theList)
end open

-- Open in Typora
on typora(listOfAliases)
	tell application "Typora"
		open listOfAliases
	end tell
end typora
