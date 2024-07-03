# PyInstaller
PyInstaller是一个强大的工具，它可以将Python脚本转换成独立的可执行文件，包括在Windows、macOS和Linux上运行的应用程序。以下是使用PyInstaller的基本步骤：
安装PyInstaller:
如果你还没有安装PyInstaller，可以通过pip来安装：
```shell
pip install pyinstaller
```
使用PyInstaller打包:
在你的项目目录中打开命令行或终端，然后使用PyInstaller来打包你的Python脚本。 
单个可执行文件（安装速度快）
```shell
pyinstaller --name='原神桌面宠物.exe' --onefile --noconsole --icon=src/icon256.ico --add-data 'config.yaml;.' --add-data 'src/icon256.ico;.' --add-data 'png/阿贝多/*;png/阿贝多' --add-data 'png/班尼特/*;png/班尼特' --add-data 'png/迪卢克/*;png/迪卢克' --add-data 'png/甘雨/*;png/甘雨' --add-data 'png/可莉/*;png/可莉' --add-data 'png/莫娜/*;png/莫娜' --add-data 'png/珊瑚宫心海/*;png/珊瑚宫心海' --add-data 'png/宵宫/*;png/宵宫' --add-data 'png/夜兰/*;png/夜兰' --add-data 'png/钟离/*;png/钟离' --add-data 'png/八重神子/*;png/八重神子' --add-data 'png/达达利亚/*;png/达达利亚' --add-data 'png/菲谢尔/*;png/菲谢尔' --add-data 'png/胡桃/*;png/胡桃' --add-data 'png/刻晴/*;png/刻晴' --add-data 'png/七七/*;png/七七' --add-data 'png/神里绫华/*;png/神里绫华' --add-data 'png/魈/*;png/魈' --add-data 'png/优菈/*;png/优菈' --add-data 'png/芭芭拉/*;png/芭芭拉' --add-data 'png/迪奥娜/*;png/迪奥娜' --add-data 'png/枫原万叶/*;png/枫原万叶' --add-data 'png/荒泷一斗/*;png/荒泷一斗' --add-data 'png/雷电将军/*;png/雷电将军' --add-data 'png/琴/*;png/琴' --add-data 'png/神里绫人/*;png/神里绫人' --add-data 'png/行秋/*;png/行秋' --add-data 'png/早柚/*;png/早柚' --add-data 'music/阿贝多/*;music/阿贝多' --add-data 'music/班尼特/*;music/班尼特' --add-data 'music/稻妻/*;music/稻妻' --add-data 'music/菲谢尔/*;music/菲谢尔' --add-data 'music/胡桃/*;music/胡桃' --add-data 'music/刻晴/*;music/刻晴' --add-data 'music/蒙德/*;music/蒙德' --add-data 'music/琴/*;music/琴' --add-data 'music/神里绫人/*;music/神里绫人' --add-data 'music/行秋/*;music/行秋' --add-data 'music/早柚/*;music/早柚' --add-data 'music/八重神子/*;music/八重神子' --add-data 'music/背景音乐/*;music/背景音乐' --add-data 'music/迪奥娜/*;music/迪奥娜' --add-data 'music/枫原万叶/*;music/枫原万叶' --add-data 'music/荒泷一斗/*;music/荒泷一斗' --add-data 'music/雷电将军/*;music/雷电将军' --add-data 'music/莫娜/*;music/莫娜' --add-data 'music/珊瑚宫心海/*;music/珊瑚宫心海' --add-data 'music/宵宫/*;music/宵宫' --add-data 'music/夜兰/*;music/夜兰' --add-data 'music/钟离/*;music/钟离' --add-data 'music/芭芭拉/*;music/芭芭拉' --add-data 'music/达达利亚/*;music/达达利亚' --add-data 'music/迪卢克/*;music/迪卢克' --add-data 'music/甘雨/*;music/甘雨' --add-data 'music/可莉/*;music/可莉' --add-data 'music/璃月/*;music/璃月' --add-data 'music/七七/*;music/七七' --add-data 'music/神里绫华/*;music/神里绫华' --add-data 'music/魈/*;music/魈' --add-data 'music/优菈/*;music/优菈'   desktoppet.py 
```
单个文件夹（重新启动速度快）
```shell
pyinstaller  desktoppet.py  --name='原神桌面宠物' --onedir --noconsole --icon=src/icon256.ico --add-data 'config.yaml;.' --add-data 'src/icon256.ico;.' --add-data 'png/阿贝多/*;png/阿贝多' --add-data 'png/班尼特/*;png/班尼特' --add-data 'png/迪卢克/*;png/迪卢克' --add-data 'png/甘雨/*;png/甘雨' --add-data 'png/可莉/*;png/可莉' --add-data 'png/莫娜/*;png/莫娜' --add-data 'png/珊瑚宫心海/*;png/珊瑚宫心海' --add-data 'png/宵宫/*;png/宵宫' --add-data 'png/夜兰/*;png/夜兰' --add-data 'png/钟离/*;png/钟离' --add-data 'png/八重神子/*;png/八重神子' --add-data 'png/达达利亚/*;png/达达利亚' --add-data 'png/菲谢尔/*;png/菲谢尔' --add-data 'png/胡桃/*;png/胡桃' --add-data 'png/刻晴/*;png/刻晴' --add-data 'png/七七/*;png/七七' --add-data 'png/神里绫华/*;png/神里绫华' --add-data 'png/魈/*;png/魈' --add-data 'png/优菈/*;png/优菈' --add-data 'png/芭芭拉/*;png/芭芭拉' --add-data 'png/迪奥娜/*;png/迪奥娜' --add-data 'png/枫原万叶/*;png/枫原万叶' --add-data 'png/荒泷一斗/*;png/荒泷一斗' --add-data 'png/雷电将军/*;png/雷电将军' --add-data 'png/琴/*;png/琴' --add-data 'png/神里绫人/*;png/神里绫人' --add-data 'png/行秋/*;png/行秋' --add-data 'png/早柚/*;png/早柚' --add-data 'music/阿贝多/*;music/阿贝多' --add-data 'music/班尼特/*;music/班尼特' --add-data 'music/稻妻/*;music/稻妻' --add-data 'music/菲谢尔/*;music/菲谢尔' --add-data 'music/胡桃/*;music/胡桃' --add-data 'music/刻晴/*;music/刻晴' --add-data 'music/蒙德/*;music/蒙德' --add-data 'music/琴/*;music/琴' --add-data 'music/神里绫人/*;music/神里绫人' --add-data 'music/行秋/*;music/行秋' --add-data 'music/早柚/*;music/早柚' --add-data 'music/八重神子/*;music/八重神子' --add-data 'music/背景音乐/*;music/背景音乐' --add-data 'music/迪奥娜/*;music/迪奥娜' --add-data 'music/枫原万叶/*;music/枫原万叶' --add-data 'music/荒泷一斗/*;music/荒泷一斗' --add-data 'music/雷电将军/*;music/雷电将军' --add-data 'music/莫娜/*;music/莫娜' --add-data 'music/珊瑚宫心海/*;music/珊瑚宫心海' --add-data 'music/宵宫/*;music/宵宫' --add-data 'music/夜兰/*;music/夜兰' --add-data 'music/钟离/*;music/钟离' --add-data 'music/芭芭拉/*;music/芭芭拉' --add-data 'music/达达利亚/*;music/达达利亚' --add-data 'music/迪卢克/*;music/迪卢克' --add-data 'music/甘雨/*;music/甘雨' --add-data 'music/可莉/*;music/可莉' --add-data 'music/璃月/*;music/璃月' --add-data 'music/七七/*;music/七七' --add-data 'music/神里绫华/*;music/神里绫华' --add-data 'music/魈/*;music/魈' --add-data 'music/优菈/*;music/优菈'  
```
生成可执行文件:
执行上述命令后，PyInstaller会在dist目录下生成一个可执行文件。如果你的脚本名为your_script.py，生成的可执行文件将被命名为your_script（在Windows上是.exe格式）。


# Inno Setup
## 使用Inno 6生成安装包
建议使用setup.iss，应用程序小，启动速度快。
也可以使用setup_onefile.iss,生成安装包的速度快。



使用 Inno Setup 创建 Python 应用程序的安装包是一个涉及多个步骤的过程。以下是详细的步骤：

### 步骤 1: 安装 Inno Setup

1. 访问 [Inno Setup 官方网站](https://jrsoftware.org/isinfo.php) 并下载安装程序。
2. 运行下载的安装程序并按照提示完成安装。

### 步骤 2: 使用 PyInstaller 打包你的应用程序

1. 确保你已经安装了 PyInstaller。如果还没有安装，可以通过 pip 安装：
   ```bash
   pip install pyinstaller
   ```
2. 使用 PyInstaller 将你的 Python 脚本打包成可执行文件：
   ```bash
   pyinstaller --onefile your_script.py
   ```
   这将在 `dist` 文件夹中生成一个独立的可执行文件。

### 步骤 3: 准备 Inno Setup 脚本

1. 创建一个新的文本文件，并将扩展名改为 `.iss`（例如 `setup.iss`）。
2. 编辑 `.iss` 文件。
3. 根据需要自定义脚本中的字段，例如应用程序名称、版本、安装目录、输出文件名等。

### 步骤 4: 编译 Inno Setup 脚本

1. 打开命令提示符或终端。
2. 使用 Inno Setup 编译器编译 `.iss` 脚本。假设你的脚本名为 `setup.iss`，可以使用以下命令：
   ```bash
   "C:\Program Files (x86)\Inno Setup 6\ISCC.exe" setup.iss
   ```
   注意：根据你的 Inno Setup 安装路径，可能需要调整上述命令中的路径。
3. 也可以使用inno 6的GUI界面进行编译
### 步骤 5: 测试安装程序

1. 在编译完成后，检查输出目录（在脚本中定义的 `OutputDir`），你将找到一个名为 `setup.exe`（或你在脚本中定义的其他名称）的安装程序文件。
2. 在不同的计算机上测试安装程序，确保它正确安装了应用程序及其所有依赖项。

### 注意事项

- 确保所有路径和文件名都是正确的，并且所有必要的文件都被包含在安装包中。
- Inno Setup 脚本提供了许多高级功能，如条件安装、注册表操作、卸载处理等，你可以根据自己的需求进行配置。
- 在分发安装程序之前，确保测试安装程序在目标操作系统上能够正常工作。

使用 Inno Setup，你可以创建一个专业的安装过程，提供更好的用户体验，并确保你的应用程序在用户计算机上正确安装。
