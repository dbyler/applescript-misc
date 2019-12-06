-- Set to your username and auth token. To get your auth token,
--   1. Sign into Beeminder.com and 
--   2. Visit https://www.beeminder.com/api/v1/auth_token.json

property beeAuthToken : "YOURBEEMINDERTOKEN" --get yours at Beeminder.com
property beeUser : "YOURUSERNAME"
property beeGoal : "SHORTGOALNAME"
property promptForDatapoint : true
property promptForComment : true
property defaultValue : 1 --default datapoint value
property defaultComment : "" --default comment to send
property launcherParameter : "datapoint" --"datapoint" or "comment" to send the corresponding thing via LaunchBar / Alfred

on log_item(itemValue, itemDescription)
	try
		set quotedDescription to quoted form of itemDescription
		set theResult to (do shell script "curl -X POST https://www.beeminder.com/api/v1/users/" & beeUser & "/goals/" & beeGoal & "/datapoints.json -d auth_token=" & beeAuthToken & " -d value=" & itemValue & " -d comment=" & quotedDescription)
		theResult
		if theResult contains "error" then
			display notification "⚠️ " & text 11 through -3 of theResult
		else
			set canonical to replace_chars("\\\"", "", text 4 through -4 of item 1 of splitString(item 2 of splitString(theResult, "canonical"), "fulltext"))
			display notification "✅ " & canonical & " → " & beeGoal
		end if
	on error
		display notification "⚠️ something went wrong"
	end try
end log_item

on replace_chars(search_string, replacement_string, this_text)
	set AppleScript's text item delimiters to the search_string
	set the item_list to every text item of this_text
	set AppleScript's text item delimiters to the replacement_string
	set this_text to the item_list as string
	set AppleScript's text item delimiters to ""
	return this_text
end replace_chars

on splitString(theString, theDelimiter)
	set oldDelimiters to AppleScript's text item delimiters
	set AppleScript's text item delimiters to theDelimiter
	set theArray to every text item of theString
	set AppleScript's text item delimiters to oldDelimiters
	return theArray
end splitString

on handle_string(mystring)
	if launcherParameter is "datapoint" then
		if promptForComment then
			set itemDescription to text returned of (display dialog "Comment to log to " & beeGoal & " 
(datapoint value: " & mystring & "):" default answer defaultComment)
			my log_item(mystring, itemDescription)
		else
			my log_item(mystring, defaultComment)
		end if
	else
		if promptForDatapoint then
			set itemValue to text returned of (display dialog "Value to log to " & beeGoal & "
(comment: '" & mystring & "'):" default answer defaultValue)
			my log_item(itemValue, mystring)
		else
			my log_item(defaultValue, mystring)
		end if
	end if
end handle_string

on alfred_script(q)
	if launcherParameter is "datapoint" then
		if promptForComment then
			set itemDescription to text returned of (display dialog "Comment to log to " & beeGoal & " 
	(datapoint value: " & q & "):" default answer defaultComment)
			my log_item(q, itemDescription)
		else
			my log_item(q, defaultComment)
		end if
	else
		if promptForDatapoint then
			set itemValue to text returned of (display dialog "Value to log to " & beeGoal & "
	(comment: '" & q & "'):" default answer defaultValue)
			my log_item(itemValue, q)
		else
			my log_item(defaultValue, q)
		end if
	end if
end alfred_script

on run
	tell application "System Events"
		activate
		if promptForDatapoint then
			set itemValue to text returned of (display dialog "Value to log to " & beeGoal & ":" default answer defaultValue)
		else
			set itemValue to defaultValue
		end if
		if promptForComment then
			set itemDescription to text returned of (display dialog "Comment to log to " & beeGoal & " 
(datapoint value: " & itemValue & "):" default answer defaultComment)
		else
			set itemDescription to defaultComment
		end if
		my log_item(itemValue, itemDescription)
	end tell
end run
