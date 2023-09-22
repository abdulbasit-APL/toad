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

######################For The SQL Queries####################################
# Get all .sql files in the folder
$scriptFiles = Get-ChildItem -Path $scriptsFolderPath -Filter *.sql
# Loop through each script and execute using the Toad DevOps Toolkit test123
            
# Loop through each script and execute it using Toad
foreach ($scriptFile in $scriptFiles) {
    $scriptPath = Join-Path -Path $toadDirectory -ChildPath $scriptFile
    Write-Host "Executing Toad script: $($scriptFile.Name)"
    #Start-Process -FilePath .\tdt.exe -ArgumentList "-batch", "-runscript=$scriptPath" -Wait
    Invoke-Expression -Command "& '$toadDirectory\tdt.exe' -batch -runscript=`"$scriptPath`""
}
