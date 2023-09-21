# Get all .ps1 files in the folder
$scriptFiles = Get-ChildItem -Path $scriptsFolderPath -Filter *.ps1
# Loop through each script and execute using the Toad DevOps Toolkit test123
            
# Loop through each script and execute it using Toad
foreach ($scriptFile in $scriptFiles) {
    $scriptPath = Join-Path -Path $toadDirectory -ChildPath $scriptFile
    Write-Host "Executing Toad script: $($scriptFile.Name)"
    #Start-Process -FilePath .\tdt.exe -ArgumentList "-batch", "-runscript=$scriptPath" -Wait
    Invoke-Expression -Command "& '$toadDirectory\tdt.exe' -batch -runscript=`"$scriptPath`""
}

#############################################################OldOne#######################
# Get all .ps1 files in the Scripts folder
#$scriptFiles = Get-ChildItem -Path $(Build.SourcesDirectory)\Scripts\Scripts -Filter *.ps1

# Loop through each script and execute it
#foreach ($scriptFile in $scriptFiles) {
#    Write-Host "Executing script $($scriptFile.Name)"
#    Invoke-Expression -Command ".\$($scriptFile.Name)"
#}
