Set WshShell = CreateObject("WScript.Shell")
' Ejecutar PowerShell de forma oculta (0 indica que no se muestra la ventana)
WshShell.Run "powershell.exe -NoProfile -ExecutionPolicy Bypass -File ""C:\Scripts\CopyFileNames.ps1"" """ & WScript.Arguments(0) & """", 0, True
Set WshShell = Nothing