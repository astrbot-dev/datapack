# 列表填充
function #custom_hud:list
# HUD刷新
function custom_hud:main/refresh with storage custom_hud:io
# 重置
data remove storage custom_hud:io list
data remove storage custom_hud:io temp