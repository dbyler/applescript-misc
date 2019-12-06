-- Set to your username and auth token. To get your auth token,
--   1. Sign into Beeminder.com and 
--   2. Visit https://www.beeminder.com/api/v1/auth_token.json
-- Requires the free JSON Helper app https://itunes.apple.com/app/json-helper-for-applescript/id453114608?mt=12

property beeUser : "YOURNAME"
property beeAuthToken : "YOURTOKEN"

-- Optional settings
property defaultBeeValue : 1
property t1AlertHours : 30
property t1AlertLabel : " 🔥"
property t2AlertHours : 54
property t2AlertLabel : " ▪️"
property t3AlertHours : 78
property t3AlertLabel : " • "

on main()
	-- 1. Fetch goals
	set displayNames to []
	
	with timeout of 15 seconds
		set myGoals to fetch_goals()
	end timeout
	
	if length of myGoals is 0 then
		display notification "⚠️ No goals returned"
		return
	end if
	
	repeat with g in myGoals
		set due to (my convertUnixTimeStamp(convertNumberToString(losedate of g)))
		
		if (due < (current date) - (time of (current date)) + (60 * 60 * t1AlertHours)) then
			set displayName to (slug of g & t1AlertLabel)
			if amount of contract of g > 0 then
				set displayName to displayName & "($" & (amount of contract of g as integer as text) & ")"
			end if
		else if (due < (current date) - (time of (current date)) + (60 * 60 * t2AlertHours)) then
			set displayName to (slug of g & t2AlertLabel)
			if amount of contract of g > 0 then
				set displayName to displayName & "($" & (amount of contract of g as integer as text) & ")"
			end if
		else if (due < (current date) - (time of (current date)) + (60 * 60 * t3AlertHours)) then
			set displayName to (slug of g & t3AlertLabel)
			if amount of contract of g > 0 then
				set displayName to displayName & "($" & (amount of contract of g as integer as text) & ")"
			end if
		else
			set displayName to slug of g
		end if
		
		set displayNames to displayNames & displayName
	end repeat
	
	-- Prompt user to select from goals list
	set AppleScript's text item delimiters to " "
	set mySelection to choose from list displayNames with prompt "Which goal do you want to Beemind? 🐝"
	if mySelection is false then return
	set myGoal to (first text item of (mySelection as text))
	
	set dataPointValue to text returned of (display dialog "What value do you want to log to " & myGoal & "?" default answer defaultBeeValue)
	set dataPointComment to text returned of (display dialog "Comment for this " & myGoal & " data point:" default answer "")
	my log_item(myGoal, dataPointValue, dataPointComment)
end main

on fetch_goals()
	set theResult to (do shell script "curl -X GET https://www.beeminder.com/api/v1/users/" & beeUser & "/goals.json?auth_token=" & beeAuthToken & "&skinny=true")
	tell application "JSON Helper" to set myGoalList to (read JSON from theResult)
	return myGoalList
end fetch_goals

on log_item(myGoal, itemValue, itemDescription)
	try
		set quotedDescription to quoted form of itemDescription
		set theResult to (do shell script "curl -X POST https://www.beeminder.com/api/v1/users/" & beeUser & "/goals/" & myGoal & "/datapoints.json -d auth_token=" & beeAuthToken & " -d value=" & itemValue & " -d comment=" & quotedDescription)
		tell application "JSON Helper"
			set theStatus to status of (read JSON from theResult)
			set canonical to canonical of (read JSON from theResult)
		end tell
		if theStatus is "created" then
			display notification "✅ \"" & itemDescription & "\" " & canonical & " → " & myGoal
		else
			display notification "⚠️ " & theStatus
		end if
	on error
		display notification "⚠️ something went wrong"
	end try
end log_item

on convertNumberToString(theNumber)
	--source: https://developer.apple.com/library/archive/documentation/LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/ManipulateNumbers.html
	set theNumberString to theNumber as string
	set theOffset to offset of "E" in theNumberString
	if theOffset = 0 then return theNumberString
	set thePrefix to text 1 thru (theOffset - 1) of theNumberString
	set theConvertedNumberPrefix to ""
	if thePrefix begins with "-" then
		set theConvertedNumberPrefix to "-"
		if thePrefix = "-" then
			set thePrefix to ""
		else
			set thePrefix to text 2 thru -1 of thePrefix
		end if
	end if
	set theDecimalAdjustment to (text (theOffset + 1) thru -1 of theNumberString) as number
	set isNegativeDecimalAdjustment to theDecimalAdjustment is less than 0
	if isNegativeDecimalAdjustment then
		set thePrefix to (reverse of (characters of thePrefix)) as string
		set theDecimalAdjustment to -theDecimalAdjustment
	end if
	set theDecimalOffset to offset of "." in thePrefix
	if theDecimalOffset = 0 then
		set theFirstPart to ""
	else
		set theFirstPart to text 1 thru (theDecimalOffset - 1) of thePrefix
	end if
	set theSecondPart to text (theDecimalOffset + 1) thru -1 of thePrefix
	set theConvertedNumber to theFirstPart
	set theRepeatCount to theDecimalAdjustment
	if (length of theSecondPart) is greater than theRepeatCount then set theRepeatCount to length of theSecondPart
	repeat with a from 1 to theRepeatCount
		try
			set theConvertedNumber to theConvertedNumber & character a of theSecondPart
		on error
			set theConvertedNumber to theConvertedNumber & "0"
		end try
		if a = theDecimalAdjustment and a is not equal to (length of theSecondPart) then set theConvertedNumber to theConvertedNumber & "."
	end repeat
	if theConvertedNumber ends with "." then set theConvertedNumber to theConvertedNumber & "0"
	if isNegativeDecimalAdjustment then set theConvertedNumber to (reverse of (characters of theConvertedNumber)) as string
	return theConvertedNumberPrefix & theConvertedNumber
end convertNumberToString

on convertUnixTimeStamp(UTS)
	set c to "date -r " & UTS & " \"+%m/%d/%Y %H:%M\""
	return date ((do shell script c) as string)
end convertUnixTimeStamp

my main()
