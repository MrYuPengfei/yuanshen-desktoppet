# PySide6 重构日志

本日志按增量步骤记录从 PyQt5 到 PySide6 的迁移过程。每一步都包含修改范围和紧随其后的验证结果。

## 第 0 步：建立基线并迁移依赖声明

- 状态：已完成
- 修改：将运行依赖移入 `pyproject.toml`，增加 `PySide6`、`PyYAML`、`pygame` 和开发依赖 `pytest`；更新 `requirements.txt`，不再声明 PyQt5。
- 基线验证：`uv lock` 通过；`python -m compileall -q desktoppet.py src tools GenshinKG` 通过。
- 基线备注：现有代码仍导入 PyQt5；编译阶段发现项目其他脚本已有无效转义序列警告，暂不属于本次迁移范围。

## 第 1 步：迁移 Qt 导入和 Qt6 API

- 状态：已完成
- 修改：将入口模块的 Qt 导入替换为 PySide6；迁移 `QAction` 所属模块、主屏幕查询、鼠标全局坐标、枚举值、菜单执行和应用事件循环；移除未使用的 `PyQt5.sip`。
- 修改：将 `pygame.mixer` 初始化移入 `Pet` 初始化，允许测试导入纯函数而不启动音频设备。
- 测试：`uv run pytest -q` 通过，1 passed；`uv run python -m compileall -q desktoppet.py tests` 通过；Pylance 文件语法检查通过。
- 测试备注：首次 pytest 收集失败是仓库根目录未进入测试模块搜索路径，新增 `tests/conftest.py` 后重跑通过。
- 文档：更新 README 和备用依赖清单中的 PySide6、uv 安装与运行方式。

## 最终验证

- `uv lock --check`：通过。
- `uv run pytest -q`：通过，1 passed。
- `uv run python -m compileall -q desktoppet.py tests`：通过。
- PySide6 QApplication/QAction 运行时烟雾测试：通过。
- 项目源码、README 和依赖声明中的 PyQt5 残留扫描：通过；本日志保留历史迁移记录中的 `PyQt5` 文本。
- 环境备注：默认源和备用源均使 `pygame==2.6.1` 在 Python 3.14 上进入源码构建并长时间停滞；改用兼容同一 `pygame` 导入接口的 `pygame-ce`，以获得可安装的 Python 3.14 wheel。