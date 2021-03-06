; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "�������ͼ"
#define MyAppVersion "0.1.7"
#define MyAppPublisher "Jack"
#define MyAppURL "https://github.com/NaoTu/DesktopNaotu"
#define MyAppExeName "DesktopNaotu.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{2C2FEA48-D9F8-46E6-A692-4CD14F1FA28B}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\DesktopNaotu
DisableProgramGroupPage=yes
OutputDir=C:\Users\Jack\Desktop
OutputBaseFilename=setup
SetupIconFile=F:\projects\DesktopNaotu\favicon.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "F:\projects\OutApp\DesktopNaotu-win32-ia32\DesktopNaotu.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\projects\OutApp\DesktopNaotu-win32-ia32\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Registry]
Root: HKCU; Subkey: "Software\DesktopNaotu\{#MyAppVersion}"; Flags: deletekey uninsdeletekey
Root: HKCR; Subkey: ".km"; ValueType: String; ValueData: "km_file";Flags: uninsdeletekey
Root: HKCR; Subkey: "km_file"; ValueType: String; ValueData: "km_file";Flags: uninsdeletekey
Root: HKCR; Subkey: "km_file\DefaultIcon"; ValueType: String; ValueName: ""; ValueData: "{app}\DesktopNaotu.exe,0";Flags: uninsdeletekey
Root: HKCR; Subkey: "km_file\shell\open\command"; ValueType: String; ValueData: """{app}\DesktopNaotu.exe"" ""%1""";Flags: uninsdeletekey


