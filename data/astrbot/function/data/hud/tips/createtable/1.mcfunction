# 右键将机器人置于改装台上
execute if score @s CustomHUD.time matches ..0 run return run tag @s remove astrbot_guide1

data modify storage custom_hud:io temp set value \
[\
    {"translate":"tips.astrbot.createtable.guide",color:"yellow"}\
]
data modify storage custom_hud:io list append from storage custom_hud:io temp[]