Name "Pandora"
OutFile "pandora_setup.exe"
InstallDir "$PROGRAMFILES\Pandora 0.1"
RequestExecutionLevel user

;Pages
Page directory
Page instfiles
UninstPage uninstConfirm
UninstPage instfiles

Section "Pandora with Ruby"
  SectionIn RO 
  SetOutPath $INSTDIR  
  File /r "D:\Vedro\Progs\Pandora\*"
  WriteUninstaller "$INSTDIR\Uninstall.exe"

  CreateShortCut "$DESKTOP\Pandora.lnk" "$INSTDIR\ruby193\bin\rubyw.exe" "pandora.rb" "$INSTDIR\view\pandora.ico"
  CreateShortCut "$QUICKLAUNCH\Pandora.lnk" "$INSTDIR\ruby193\bin\rubyw.exe" "pandora.rb" "$INSTDIR\view\pandora.ico"
  CreateDirectory "$SMPROGRAMS\Pandora"
  CreateShortCut "$SMPROGRAMS\Pandora\Pandora.lnk" "$INSTDIR\ruby193\bin\rubyw.exe" "pandora.rb" "$INSTDIR\view\pandora.ico"
  CreateShortCut "$SMPROGRAMS\Pandora\Uninstall.lnk" "$INSTDIR\Uninstall.exe"
SectionEnd

Section "Uninstall"
  RMDir /r "$INSTDIR"  
  RMDir /r "$SMPROGRAMS\Pandora"
  Delete "$DESKTOP\Pandora.lnk"
  Delete "$QUICKLAUNCH\Pandora.lnk"
SectionEnd
