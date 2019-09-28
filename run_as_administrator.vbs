
' Set oShell = CreateObject("Shell.Application")
' oShell.ShellExecute "cmd.exe", , , "runas", 1
' oShell.Run "C:\\Programas\\processhacker\\x64\\ProcessHacker.exe"

' https://stackoverflow.com/questions/15770599/about-using-double-quotes-in-vbscript
Const Quote = """"

scriptdirectory = CreateObject( "Scripting.FileSystemObject" ).GetParentFolderName( WScript.ScriptFullName )

Set shellobject = CreateObject( "Shell.Application" )

' https://www.tutorialspoint.com/vbscript/vbscript_dialog_boxes.htm
' MsgBox( _
'     "/k start /b " _
'     & Quote _
'     & Quote _
'     & " " _
'     & Quote _
'     & scriptdirectory _
'     & "\\processhackerManualRolling\\x64\\ProcessHacker.exe" _
'     & Quote _
'     & " -hide && exit" _
' )

' https://superuser.com/questions/239565/can-i-use-the-start-command-with-spaces-in-the-path
shellobject.ShellExecute _
    "cmd.exe" _
    , "/k start /b " _
    & Quote _
    & Quote _
    & " " _
    & Quote _
    & scriptdirectory _
    & "\\processhackerManualRolling\\x64\\ProcessHacker.exe" _
    & Quote _
    & " -hide && exit" _
    , "" _
    , "runas" _
    , _
    1

