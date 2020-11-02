@echo off
:: This batch script will zip up the contents of the folder its in and drop it in the pack folder
:: Handy for doing releases

cd %~dp0

set udd=%USERPROFILE%\Documents\EmoTracker\packs\Wind-Waker-Item-and-Map-Tracker-Darkened5ky.zip
set udo=%USERPROFILE%\OneDrive\Documents\EmoTracker\packs\Wind-Waker-Item-and-Map-Tracker-Darkened5ky.zip
set udl=%udd% %udo%
set runfail=0
set itemlist=0
echo .


::Calls all locations and sees if a file exists

(for %%a in (%udl%) do (
  (set /a itemlist=itemlist+1)
  (if exist %%a (
    (echo %%a located.)
    (del %%a 2>NUL)
    ("C:\Program Files\7-Zip\7z.exe" a %%a -xr!*.bat -xr!.git* -xr!*.git)
    (echo %%a replaced.)
  ) else (
    (set /a runfail=runfail+1)
    (echo .)
  ))
))


::If there is such a case where the tracker does not exist

echo .
if %runfail% GEQ %itemlist% (
  (del %udd% 2>NUL)
  ("C:\Program Files\7-Zip\7z.exe" a %udd% -x!*.bat -x!.git* -x!*.git -x!.git/*)
) else (
  echo .
)

::Test

D:\EmoTracker\EmoTracker.exe
