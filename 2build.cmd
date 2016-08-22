@echo off

msbuild /t:Rebuild /p:Configuration=Debug /v:m source\Code.sln
