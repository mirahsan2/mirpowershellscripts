Add-Type -AssemblyName PresentationFramework

# Define the path to the file containing the list of usernames
$filePath = "C:/Users/mir.ahsan/OneDrive - Kiewit Corporation/Scripts/Win11Project/updated_usernames.txt"

$outputFilePath = "C:/Users/mir.ahsan/OneDrive - Kiewit Corporation/Scripts/Win11Project/updated_usernames2.txt"

# Read the list of usernames from the file
$usernames = Get-Content -Path $filePath

$updatedEmails = @()

# Loop through each username, append @kiewit.com, and display it in a message box
foreach ($username in $usernames) {
    $email = "`"$username@kiewit.com`""
    $updatedEmails += $email 
}

$updatedEmails | Out-File -FilePath $outputFilePath

Write-Output "Updated emails have been exported to $outputFilePath"