# Get all .ps1 files in the Scripts folder
$scriptFiles = Get-ChildItem -Path $(Build.SourcesDirectory)\Scripts\Scripts -Filter *.ps1

# Loop through each script and execute it
foreach ($scriptFile in $scriptFiles) {
    Write-Host "Executing script $($scriptFile.Name)"
    Invoke-Expression -Command ".\$($scriptFile.Name)"
}
