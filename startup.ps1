# Define the path to the program you want to launch
$programPath = "C:\Program Files\Microsoft Office\root\Office16\ONENOTE.EXE"

# Define the path to the startup folder
$startupFolder = [System.IO.Path]::Combine($env:APPDATA, "Microsoft\Windows\Start Menu\Programs\Startup")

# Define the path to the shortcut
$shortcutPath = [System.IO.Path]::Combine($startupFolder, "OneNote.lnk")

# Create a new WScript.Shell COM object
$wshShell = New-Object -ComObject WScript.Shell

# Create the shortcut
$shortcut = $wshShell.CreateShortcut($shortcutPath)
$shortcut.TargetPath = $programPath
$shortcut.Save()

Write-Output "Shortcut created at $shortcutPath"

