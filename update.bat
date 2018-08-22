@echo off
REM This batch script will zip up the contents of the folder its in and drop it in the pack folder
REM Handy for doing releases

del %USERPROFILE%\Documents\EmoTracker\packs\Wind-Waker-Item-and-Map-Tracker-Darkened5ky.zip 2>NUL
"C:\Program Files\7-Zip\7z.exe" a -x!*.bat -x!.git* %USERPROFILE%\Documents\EmoTracker\packs\Wind-Waker-Item-and-Map-Tracker-Darkened5ky.zip
