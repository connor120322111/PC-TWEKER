@echo off
title PC Tweaker and Cleaner
echo Starting PC Tweaker and Cleaner...
echo.

:: Clear temporary files
echo Cleaning up temporary files...
del /q /f %temp%\* > nul
rd /s /q %temp%
echo Temporary files cleaned.
echo.

:: Clean Windows temp files
echo Cleaning Windows temp files...
del /q /f C:\Windows\Temp\* > nul
rd /s /q C:\Windows\Temp
echo Windows temp files cleaned.
echo.

:: Clear DNS cache
echo Flushing DNS cache...
ipconfig /flushdns
echo DNS cache flushed.
echo.

:: Optimize system performance
echo Optimizing system performance...
powercfg -h off
echo System performance optimized.
echo.

:: Clean up prefetch files
echo Cleaning up prefetch files...
del /q /f C:\Windows\Prefetch\* > nul
echo Prefetch files cleaned.
echo.

:: Disk Cleanup (in the background)
echo Running Disk Cleanup...
cleanmgr /sagerun:1
echo Disk Cleanup initiated.

echo.
echo PC Tweaking and Cleaning completed.
pause
