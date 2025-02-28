Add-Type -AssemblyName PresentationFramework

# Define the path to the file containing the list of usernames
$filePath = "C:/Users/mir.ahsan/OneDrive - Kiewit Corporation/Scripts/Win11Project/usernameswithquotes.txt"

$outputFilePath = "C:/Users/mir.ahsan/OneDrive - Kiewit Corporation/Scripts/Win11Project/usernameswithquotes3.txt"

# Read the list of usernames from the file
$usernames = Get-Content -Path $filePath

$updatedUsernames = @()

# Loop through each username, append @kiewit.com, and display it in a message box
foreach ($username in $usernames) {
    $updatedUsernames = ",`"$username`","
    $updatedUsernames += $updatedUsernames 
}

$updatedUsernames | Out-File -FilePath $outputFilePath

Write-Output "Updated usernames have been exported to $outputFilePath"