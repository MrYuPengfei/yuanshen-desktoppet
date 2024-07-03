[Setup]
; 应用程序的名称和版本
AppName=原神桌面宠物
AppVersion=1.1

; 安装程序的输出文件名
OutputDir=./inno_build
OutputBaseFilename=原神桌面宠物安装向导
LicenseFile=license
; 安装程序的窗口设置
SetupIconFile=src\icon256.ico
WizardImageFile=src\icon256.bmp
WizardSmallImageFile=src\icon256.bmp
AppPublisher=于鹏飞
AppPublisherURL=https://gitee.com/yupengfei1074064684/yuanshen-desktoppet/tree/master

; 其他设置...
DefaultDirName={commonpf}\原神桌面宠物
DisableProgramGroupPage=yes
Compression=lzma
SolidCompression=yes

[Languages]
Name: "zh_CN"; MessagesFile: "ChineseSimplified.isl"

[Files]
; 包含 PyInstaller 打包的应用程序目录
Source: "dist\原神桌面宠物\原神桌面宠物.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "src\icon256.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "dist\原神桌面宠物\_internal\*"; DestDir: "{app}\_internal"; Flags: ignoreversion recursesubdirs
[Icons]
; 创建开始菜单的快捷方式;设置快捷方式的图标
Name: "{group}\原神桌面宠物"; Filename: "{app}\原神桌面宠物.exe";IconFilename: "{app}\icon256.ico"

[Code]
procedure CurPageChanged(CurPageID: Integer);
begin
  if CurPageID = wpWelcome then
  begin
    // 用户处于欢迎页面时显示消息框
    MsgBox('感谢您安装原神桌面宠物。如需支持，请联系作者:于鹏飞，Email:mr_yupengfei@foxmail.com', mbInformation, MB_OK);
  end;
end;

[Run]
; 安装后运行应用程序
Filename: "{app}\原神桌面宠物.exe"; Description: "{cm:LaunchProgram,原神桌面宠物}"; Flags: nowait postinstall