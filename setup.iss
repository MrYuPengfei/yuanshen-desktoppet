[Setup]
AppName=原神桌面宠物
AppVersion=0.0.1
WizardStyle=modern
DefaultDirName={autopf}\yuanshen-desktoppet
DefaultGroupName=原神桌面宠物
UninstallDisplayIcon={app}\MyProg.exe
Compression=lzma2
SolidCompression=yes
OutputDir=userdocs:Inno Setup Examples Output

[Files]
Source: "MyProg.exe"; DestDir: "{app}"
Source: "MyProg.chm"; DestDir: "{app}"
Source: "Readme.txt"; DestDir: "{app}"; Flags: isreadme
 

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
; 指定要包含在安装程序中的文件
Source: "C:\path\to\your\executable.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\path\to\your\readme.txt"; DestDir: "{app}"

[Icons]
; 创建快捷方式
Name: "{group}\My Application"; Filename: "{app}\{#MyAppExeFilename}"
Name: "{group}\Uninstall My Application"; Filename: "{uninstallstring}"

[Run]
; 安装后运行应用程序
Filename: "{app}\{#MyAppExeFilename}"; Description: "{cm:LaunchProgram,My Application}"; Flags: nowait postinstall