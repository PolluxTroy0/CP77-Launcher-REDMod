#NoTrayIcon

#AutoIt3Wrapper_Icon=icon.ico
#AutoIt3Wrapper_Outfile=Cyberpunk 2077 REDmod.exe
#AutoIt3Wrapper_OutFile_Type=exe
#AutoIt3Wrapper_Compression=0
#AutoIt3Wrapper_Res_Description=Cyberpunk 2077 REDmod
#AutoIt3Wrapper_Res_ProductVersion=1.0.0.0
#AutoIt3Wrapper_Res_Fileversion=1.0.0.0
#AutoIt3Wrapper_Res_CompanyName=CD Projekt RED
#AutoIt3Wrapper_Res_LegalCopyright=CD Projekt RED
#AutoIt3Wrapper_Res_ProductName=Cyberpunk 2077
#AutoIt3Wrapper_Res_Language=1033
#AutoIt3Wrapper_UseX64=N
#AutoIt3Wrapper_UseUpx=N

$Folder = @ScriptDir & ""

If FileExists($Folder & '\tools\redmod\bin\redMod.exe') Then
	RunWait($Folder & '\tools\redmod\bin\redMod.exe deploy -root="' & $Folder & '"', $Folder & "\tools\redmod\bin")
	Run($Folder & '\bin\x64\Cyberpunk2077.exe -modded', $Folder & '\bin\x64')
	Exit
Else
	MsgBox(0+16, 'Cyberpunk 2077 REDmod', 'redMod.exe not found in "' & $Folder & '\tools\redmod\bin" !')
	Exit
EndIf