[Setup]
; 应用程序的名称和版本
AppName=原神桌面宠物_v1
AppVersion=1.0

; 安装程序的输出文件名
OutputDir=./inno_build
OutputBaseFilename=安装原神桌面宠物_v1

; 安装程序的窗口设置
UninstallDisplayIcon={app}\app_icon.ico

; 其他设置...
DefaultDirName={pf}\原神桌面宠物_v1
DisableProgramGroupPage=yes
Compression=lzma
SolidCompression=yes
 

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
; 包含 PyInstaller 打包的应用程序目录
Source: "dist\原神桌面宠物.exe"; DestDir: "{app}"
Source: "src\icon256.ico"; DestDir: "{app}"

[Icons]
; 创建开始菜单的快捷方式;设置快捷方式的图标
Name: "{group}\原神桌面宠物_v1"; Filename: "{app}\原神桌面宠物.exe";IconFilename: "{app}\icon256.ico"

[Run]
; 安装后运行应用程序
Filename: "{app}\原神桌面宠物.exe"; Description: "{cm:LaunchProgram,原神桌面宠物_v1}"; Flags: nowait postinstall