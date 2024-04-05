@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion

rem CMD arka planını turuncu ve yazı rengini siyah yapma
color 0A

rem Metni ortala
set "metin=nowte App Installer"
set /a "uzunluk=(80 - !metin!:~0,1) / 2"
set "bosluk="
for /l %%a in (1,1,%uzunluk%) do set "bosluk=!bosluk! "
set "metin=!bosluk!!metin!!bosluk!"

rem Metni ekrana yazdır
echo %metin%

:menu
cls
echo --------------------------------------------------------------------------------------------------------
echo                                            App List
echo --------------------------------------------------------------------------------------------------------
echo   1. Google Chrome          11. Microsoft Word            21. Zoom                   31. OBS Studio
echo   2. Firefox                12. Photoshop Express         22. Slack                  32. Paint.NET
echo   3. Adobe Photoshop        13. GIMP                      23. Discord                33. Blender
echo   4. Microsoft Excel        14. Audacity                 24. Adobe Acrobat Reader   34. Inkscape
echo   5. VLC Media Player       15. TeamViewer               25. WhatsApp               35. TeamSpeak
echo   6. Spotify                16. HandBrake                26. Microsoft Teams        36. WinSCP
echo   7. Microsoft Teams        17. OBS Studio               27. Notepad++              37. PuTTY
echo   8. Zoom                   18. FileZilla                28. Sublime Text           38. Visual Studio Code
echo   9. Slack                  19. WinRAR                   29. Microsoft Edge         39. Steam
echo  10. Evernote               20. 7-Zip                    30. Discord                40. Adobe Acrobat Reader
echo --------------------------------------------------------------------------------------------------------
set /p secim=Which app would you like to install?
 (1-40)? 

if "%secim%"=="" goto menu
if %secim% leq 40 (
    
    set "uygulamalar=Google Chrome Firefox Adobe Photoshop Microsoft Excel VLC Media Player Spotify Microsoft Teams Zoom Slack Evernote Microsoft Word Photoshop Express GIMP Audacity TeamViewer HandBrake OBS Studio Paint.NET Blender Inkscape Adobe Acrobat Reader Discord WhatsApp Notepad++ FileZilla WinRAR 7-Zip TeamSpeak WinSCP PuTTY VLC Media Player Steam"

    for %%a in (!uygulamalar!) do (
        if "%secim%"=="1" if "%%a"=="Google Chrome" winget install "Google.Chrome"
        if "%secim%"=="2" if "%%a"=="Firefox" winget install "Mozilla.Firefox"
        if "%secim%"=="3" if "%%a"=="Adobe Photoshop" winget install "Adobe.Photoshop"
        if "%secim%"=="4" if "%%a"=="Microsoft Excel" winget install "Microsoft.Excel"
        if "%secim%"=="5" if "%%a"=="VLC Media Player" winget install "VideoLAN.VLC"
        if "%secim%"=="6" if "%%a"=="Spotify" winget install "Spotify"
        if "%secim%"=="7" if "%%a"=="Microsoft Teams" winget install "Microsoft.Teams"
        if "%secim%"=="8" if "%%a"=="Zoom" winget install "Zoom.Zoom"
        if "%secim%"=="9" if "%%a"=="Slack" winget install "SlackTechnologies.Slack"
        if "%secim%"=="10" if "%%a"=="Evernote" winget install "Evernote.Evernote"
        if "%secim%"=="11" if "%%a"=="Microsoft Word" winget install "Microsoft.Word"
        if "%secim%"=="12" if "%%a"=="Photoshop Express" winget install "Adobe.PhotoshopExpress"
        if "%secim%"=="13" if "%%a"=="GIMP" winget install "GIMP"
        if "%secim%"=="14" if "%%a"=="Audacity" winget install "Audacity.Audacity"
        if "%secim%"=="15" if "%%a"=="TeamViewer" winget install "TeamViewer"
        if "%secim%"=="16" if "%%a"=="HandBrake" winget install "HandBrake"
        if "%secim%"=="17" if "%%a"=="OBS Studio" winget install "OBSStudio"
        if "%secim%"=="18" if "%%a"=="FileZilla" winget install "FileZillaProject.FileZilla"
        if "%secim%"=="19" if "%%a"=="WinRAR" winget install "RARLab.WinRAR"
        if "%secim%"=="20" if "%%a"=="7-Zip" winget install "7zip.7zip"
        if "%secim%"=="21" if "%%a"=="Zoom" winget install "Zoom.Zoom"
        if "%secim%"=="22" if "%%a"=="Slack" winget install "SlackTechnologies.Slack"
        if "%secim%"=="23" if "%%a"=="Discord" winget install "Discord"
        if "%secim%"=="24" if "%%a"=="Adobe Acrobat Reader" winget install "Adobe.AcrobatReader"
        if "%secim%"=="25" if "%%a"=="Microsoft Word" winget install "Microsoft.Word"
        if "%secim%"=="26" if "%%a"=="WhatsApp" winget install "WhatsApp"
        if "%secim%"=="27" if "%%a"=="Notepad++" winget install "NotepadPlusPlus.NotepadPlusPlus"
        if "%secim%"=="28" if "%%a"=="Sublime Text" winget install "SublimeText.SublimeText"
        if "%secim%"=="29" if "%%a"=="Visual Studio Code" winget install "Microsoft.VisualStudioCode"
        if "%secim%"=="30" if "%%a"=="Microsoft Teams" winget install "Microsoft.Teams"
        if "%secim%"=="31" if "%%a"=="Blender" winget install "Blender"
        if "%secim%"=="32" if "%%a"=="Inkscape" winget install "Inkscape"
        if "%secim%"=="33" if "%%a"=="TeamSpeak" winget install "TeamSpeak"
        if "%secim%"=="34" if "%%a"=="WinSCP" winget install "WinSCP"
        if "%secim%"=="35" if "%%a"=="PuTTY" winget install "PuTTY"
        if "%secim%"=="36" if "%%a"=="WinSCP" winget install "WinSCP"
        if "%secim%"=="37" if "%%a"=="Steam" winget install "Valve.Steam"
        if "%secim%"=="38" if "%%a"=="Visual Studio Code" winget install "Microsoft.VisualStudioCode"
        if "%secim%"=="39" if "%%a"=="Steam" winget install "Valve.Steam"
        if "%secim%"=="40" if "%%a"=="Adobe Acrobat Reader" winget install "Adobe.AcrobatReader"
    )

) else (
    echo Invalid selection. Please enter a number between 1 and 40.
    pause
    goto menu
)

set /p devam=Would you like to make a new transaction? (E/H)
if /i "%devam%"=="E" goto menu

echo Process completed. The program is closing...
timeout /t 3 >nul
exit
