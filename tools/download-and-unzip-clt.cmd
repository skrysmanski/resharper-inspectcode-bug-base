@echo off

SET OUTPUT_FOLDER=%~dp0\CommandLineTools

:: Download CLT
powershell -ExecutionPolicy Unrestricted -file "%~dp0\download-clt.ps1" %1 || exit /B 1

:: Delete old folder
echo "Deleting old CLT folder: %OUTPUT_FOLDER%"
rmdir /Q /S "%OUTPUT_FOLDER%"

:: Unzip CLT
echo "Unzipping CLT to: %OUTPUT_FOLDER%"
"%~dp0\7za.exe" x -y "-o%OUTPUT_FOLDER%" "%~dp0\JetBrains.ReSharper.CommandLineTools.zip"
