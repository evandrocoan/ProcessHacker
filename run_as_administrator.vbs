
' Set oShell = CreateObject("Shell.Application")
' oShell.ShellExecute "cmd.exe", , , "runas", 1
' oShell.Run "C:\\Programas\\processhacker\\x64\\ProcessHacker.exe"

scriptdirectory = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)

Set shellobject = CreateObject("Shell.Application")

shellobject.ShellExecute "cmd.exe", "/k start /b " & scriptdirectory & "\\processhackerManualRolling\\x64\\ProcessHacker.exe" & " -hide && exit", "", "runas", 1


