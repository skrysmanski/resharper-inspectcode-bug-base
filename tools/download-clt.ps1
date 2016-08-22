Param([Parameter(Mandatory = $true)]
      [string] $cltVersion
)

switch ($cltVersion)
{
    "2016.2" { $fullFileName = "JetBrains.ReSharper.CommandLineTools.2016.2.20160818.172304.zip" }
    "2016.1.2" { $fullFileName = "JetBrains.ReSharper.CommandLineTools.2016.1.20160523.144749.zip" }
    "2016.1.1" { $fullFileName = "JetBrains.ReSharper.CommandLineTools.2016.1.20160504.105828.zip" }
    "2016.1" { $fullFileName = "JetBrains.ReSharper.CommandLineTools.2016.1.20160414.162943.zip" }
    "10.0.2" { $fullFileName = "JetBrains.ReSharper.CommandLineTools.10.0.20151218.134438.zip" }
    "10.0.1" { $fullFileName = "JetBrains.ReSharper.CommandLineTools.10.0.20151114.195539.zip" }
    "10.0" { $fullFileName = "JetBrains.ReSharper.CommandLineTools.10.0.20151101.194925.zip" }
    "9.2" { $fullFileName = "JetBrains.ReSharper.CommandLineTools.9.2.20150819.165728.zip" }
    default { Write-Host "Unsupported CLT version"; exit 1; }
}

$fullUrl = "http://download.jetbrains.com/resharper/$fullFileName"
Write-Host "Downloading CLT from: $fullUrl"

$destFile = "$PSScriptRoot\JetBrains.ReSharper.CommandLineTools.zip"

& "$PSScriptRoot\download-file.ps1" $fullUrl $destFile

Write-Host "File written to: $destFile"
