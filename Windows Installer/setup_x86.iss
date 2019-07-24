﻿#define MyAppName "Fabenial Wallet"
#define MyAppVersion "1.18.11.5"
#define MyAppPublisher "Fabenial Foundation"

[Setup]
DisableWelcomePage=no
AppId={{A7717F1E-595C-4E3D-BE19-24538823D74C}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultGroupName={#MyAppName}
OutputBaseFilename=wallet_windows_x86
Compression=lzma/ultra64
SolidCompression=True
InternalCompressLevel=ultra64
SetupIconFile=icon.ico
WizardImageFile=164x314.bmp
WizardSmallImageFile=55x55.bmp
AppCopyright=Copyright (C) {#MyAppPublisher}, 2018
OutputDir=bin
AlwaysShowGroupOnReadyPage=True
AlwaysShowDirOnReadyPage=True
AppMutex=2465A86D-0A16-48F7-9C7A-D616564C71C8
AppComments=Fabenial
AppContact=arcy.all@yahoo.com
VersionInfoVersion={#MyAppVersion}
VersionInfoCompany={#MyAppPublisher}
VersionInfoDescription=Fabenial Blockchain
VersionInfoTextVersion={#MyAppVersion}
VersionInfoCopyright=Copyright (C) {#MyAppPublisher}, 2018
VersionInfoProductName=Fabenial
VersionInfoProductVersion={#MyAppVersion}
VersionInfoProductTextVersion={#MyAppVersion}
ShowLanguageDialog=no
LanguageDetectionMethod=none
WizardImageStretch=False
PrivilegesRequired=lowest
CloseApplications=False
Uninstallable=yes
UsePreviousSetupType=False
DisableReadyPage=True
DefaultDirName={commonappdata}\Fabenial
RestartApplications=False
UninstallDisplayName=Fabenial Wallet
UninstallDisplayIcon={uninstallexe}
UsePreviousGroup=False
AlwaysUsePersonalGroup=True
AppendDefaultGroupName=False

[Files]
Source: "..\bin\x86\*"; DestDir: "{app}"; Flags: recursesubdirs replacesameversion

[Run]
Filename: "{app}\fabenial-gui.exe"; WorkingDir: "{app}"; Flags: nowait postinstall shellexec; Description: "Start {#MyAppName}"

[Icons]
Name: "{userdesktop}\Fabenial Wallet"; Filename: "{app}\fabenial-gui.exe"; WorkingDir: "{app}"; IconFilename: "{app}\fabenial-gui.exe"; IconIndex: 0
Name: "{group}\Fabenial Wallet"; Filename: "{app}\fabenial-gui.exe"; WorkingDir: "{app}"; IconFilename: "{app}\fabenial-gui.exe"; IconIndex: 0
Name: "{group}\Data Folder"; Filename: "{userappdata}\fabenial"; WorkingDir: "{userappdata}\fabenial"; IconFilename: "{app}\fabenial-gui.exe"; IconIndex: 0