@echo off

"%~dp0\tools\CommandLineTools\inspectcode.exe" --properties:Configuration=Debug --swea "-o=%~dp0\resharper.xml" --disable-settings-layers:SolutionPersonal;ProjectPersonal "%~dp0\source\Code.sln"
