Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run "powershell.exe -ExecutionPolicy Bypass -WindowStyle Hidden -File ""keep-awake.ps1""", 0
Set WshShell = Nothing
