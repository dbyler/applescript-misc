property growlAppName : "Dan's Scripts"property allNotifications : {"General", "Error"}property enabledNotifications : {"General", "Error"}property iconApplication : "OmniFocus.app"(* Begin notification code *)on notify(alertName, alertTitle, alertText)	--Call this to show a normal notification	my notifyMain(alertName, alertTitle, alertText, false)end notifyon notifyWithSticky(alertName, alertTitle, alertText)	--Show a sticky Growl notification	my notifyMain(alertName, alertTitle, alertText, true)end notifyWithStickyon IsGrowlRunning()	tell application "System Events" to set GrowlRunning to (count of (every process where creator type is "GRRR")) > 0	return GrowlRunningend IsGrowlRunningon dictToString(dict) --needed to encapsulate dictionaries in osascript	set dictString to "{"	repeat with i in dict		if (length of dictString > 1) then set dictString to dictString & ", "		set dictString to dictString & "\"" & i & "\""	end repeat	set dictString to dictString & "}"	return dictStringend dictToStringon notifyWithGrowl(alertName, alertTitle, alertText, useSticky)	if useSticky then		set osascript to "property growlAppName : \"" & growlAppName & "\"property allNotifications : " & dictToString(allNotifications) & "property enabledNotifications : " & dictToString(enabledNotifications) & "property iconApplication : \"" & iconApplication & "\"tell application \"GrowlHelperApp\"	register as application growlAppName all notifications allNotifications default notifications enabledNotifications icon of application iconApplication	notify with name \"" & alertName & "\" title \"" & alertTitle & "\" application name growlAppName description \"" & alertText & "\" with stickyend tell"	else		set osascript to "property growlAppName : \"" & growlAppName & "\"property allNotifications : " & dictToString(allNotifications) & "property enabledNotifications : " & dictToString(enabledNotifications) & "property iconApplication : \"" & iconApplication & "\"tell application \"GrowlHelperApp\"	register as application growlAppName all notifications allNotifications default notifications enabledNotifications icon of application iconApplication	notify with name \"" & alertName & "\" title \"" & alertTitle & "\" application name growlAppName description \"" & alertText & "\"end tell"	end if	set shellScript to "osascript -e " & quoted form of osascript & " &> /dev/null &"	ignoring application responses		do shell script shellScript	end ignoringend notifyWithGrowlon NotifyWithoutGrowl(alertText)	tell application "OmniFocus" to display dialog alertText with icon 1 buttons {"OK"} default button "OK"end NotifyWithoutGrowlon notifyMain(alertName, alertTitle, alertText, useSticky)	set GrowlRunning to my IsGrowlRunning() --check if Growl is running...	if not GrowlRunning then --if Growl isn't running...		set GrowlPath to "" --check to see if Growl is installed...		try			tell application "Finder" to tell (application file id "GRRR") to set strGrowlPath to POSIX path of (its container as alias) & name		end try		if GrowlPath is not "" then --...try to launch if so...			do shell script "open " & strGrowlPath & " > /dev/null 2>&1 &"			delay 0.5			set GrowlRunning to my IsGrowlRunning()		end if	end if	if GrowlRunning then		notifyWithGrowl(alertName, alertTitle, alertText, useSticky)	else		NotifyWithoutGrowl(alertText)	end ifend notifyMain(* end notification code *)my notify("General", "Title", "Body")