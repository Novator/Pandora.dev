Name "Pandora"
OutFile "pandora_setup.exe"
InstallDir "$PROGRAMFILES\Pandora"
RequestExecutionLevel admin

;Pages
Page directory
Page instfiles
UninstPage uninstConfirm
UninstPage instfiles

Section "Pandora with Ruby"
  SectionIn RO 
  SetOutPath $INSTDIR  
  File /r "D:\Progs\Vedro\Pandora\*"

  WriteUninstaller "$INSTDIR\uninstall.exe"

  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Pandora" "DisplayName" "Pandora"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Pandora" "DisplayIcon" '"$INSTDIR\view\pandora.ico"'
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Pandora" "UninstallString" '"$INSTDIR\uninstall.exe"'
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Pandora" "NoModify" 1
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Pandora" "NoRepair" 1

  CreateShortCut "$DESKTOP\Pandora.lnk" "$INSTDIR\ruby193\bin\rubyw.exe" "pandora.rb" "$INSTDIR\view\pandora.ico"
  CreateShortCut "$QUICKLAUNCH\Pandora.lnk" "$INSTDIR\ruby193\bin\rubyw.exe" "pandora.rb" "$INSTDIR\view\pandora.ico"
  CreateDirectory "$SMPROGRAMS\Pandora"
  CreateShortCut "$SMPROGRAMS\Pandora\Pandora.lnk" "$INSTDIR\ruby193\bin\rubyw.exe" "pandora.rb" "$INSTDIR\view\pandora.ico"
  CreateShortCut "$SMPROGRAMS\Pandora\Uninstall.lnk" "$INSTDIR\uninstall.exe"
SectionEnd

Section "Uninstall"
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Pandora"
  RMDir /r "$INSTDIR"  
  RMDir /r "$SMPROGRAMS\Pandora"
  Delete "$DESKTOP\Pandora.lnk"
  Delete "$QUICKLAUNCH\Pandora.lnk"
SectionEnd
