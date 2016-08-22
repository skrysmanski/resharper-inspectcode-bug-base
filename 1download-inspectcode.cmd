@echo off

:: Specify the CLT version to use
SET CLT_VERSION=2016.2

call "%~dp0\tools\download-and-unzip-clt.cmd" %CLT_VERSION%
