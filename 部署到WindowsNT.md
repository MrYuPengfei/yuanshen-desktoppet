PyInstaller是一个强大的工具，它可以将Python脚本转换成独立的可执行文件，包括在Windows、macOS和Linux上运行的应用程序。以下是使用PyInstaller的基本步骤：
安装PyInstaller:
如果你还没有安装PyInstaller，可以通过pip来安装：
```shell
pip install pyinstaller
```
使用PyInstaller打包:
在你的项目目录中打开命令行或终端，然后使用PyInstaller来打包你的Python脚本。 
```shell
pyinstaller --name='原神桌面宠物.exe' --onefile --noconsole --icon=src/logo.ico --add-data 'config.yaml:.' --add-data 'png/*:png' --add-data 'music/*:music' desktoppet.py 
```

```shell
pyinstaller --name='原神桌面宠物.exe' --onefile --noconsole --icon=src/logo.ico --add-data 'config.yaml:.' --add-data 'png:.' --add-data 'music:.' desktoppet.py 
```

生成可执行文件:
执行上述命令后，PyInstaller会在dist目录下生成一个可执行文件。如果你的脚本名为your_script.py，生成的可执行文件将被命名为your_script（在Windows上是.exe格式）。

