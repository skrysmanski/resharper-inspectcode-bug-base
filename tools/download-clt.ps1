Param([Parameter(Mandatory = $true)]
      [string] $cltVersion
)

switch ($cltVersion)
{
	"2016.1.2" { $fullFileName = "JetBrains.ReSharper.CommandLineTools.2016.1.20160523.144749.zip" }
	default { Write-Host "Unsupported CLT version"; exit 1; }
}

$fullUrl = "http://download.jetbrains.com/resharper/$fullFileName"
Write-Host "Downloading CLT from: $fullUrl"

$destFile = "$PSScriptRoot\JetBrains.ReSharper.CommandLineTools.zip"

& "$PSScriptRoot\download-file.ps1" $fullUrl $destFile

Write-Host "File written to: $destFile"
