[Setup]
; 应用程序的名称和版本
AppName=原神桌面宠物
AppVersion=1.0

; 安装程序的输出文件名
OutputDir=./inno_build
OutputBaseFilename=安装原神桌面宠物

; 安装程序的窗口设置


; 其他设置...
DefaultDirName={pf}\原神桌面宠物
DisableProgramGroupPage=yes
Compression=lzma
SolidCompression=yes
 

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
; 包含 PyInstaller 打包的应用程序目录
Source: "dist\原神桌面宠物\原神桌面宠物.exe"; DestDir: "{app}"
; 包含 _internal 文件夹及其所有内容
Source: "dist\原神桌面宠物\_internal\*"; DestDir: "{app}\_internal"; Flags: ignoreversion recursesubdirs

[Icons]
; 创建开始菜单的快捷方式
Name: "{group}\原神桌面宠物"; Filename: "{app}\原神桌面宠物.exe"; IconFilename: "{app}\原神桌面宠物\app_icon.ico"

[Run]
; 安装后运行应用程序
Filename: "{app}\原神桌面宠物.exe"; Description: "{cm:LaunchProgram,原神桌面宠物}"; Flags: nowait postinstall