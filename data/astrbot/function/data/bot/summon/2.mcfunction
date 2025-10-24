# as player
# 标签
tag @n[tag=astrbot_root_temp,distance=..5] add astrbot_heavy
# NoAI
data modify entity @n[tag=astrbot_root_temp,distance=..5] NoAI set value 1b
# 交互实体属性配置
data modify entity @n[tag=astrbot_interaction_temp] width set value 1.8
data modify entity @n[tag=astrbot_interaction_temp] height set value -0.2
data modify entity @n[tag=astrbot_interaction_2_temp] width set value 1.8
data modify entity @n[tag=astrbot_interaction_2_temp] height set value 2
# 命名
data modify entity @n[tag=astrbot_root_temp,distance=..5] CustomName set value {"translate":"entity.astrbot.bot_heavy"}
#初始化模块
scoreboard players set @s astrbot.module_terminal 1111
function astrbot:trigger/module_terminal