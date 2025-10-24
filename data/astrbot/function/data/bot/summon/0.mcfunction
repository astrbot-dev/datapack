# as player
# 标签
tag @n[tag=astrbot_root_temp,distance=..5] add astrbot_ground
tag @n[tag=astrbot_root_temp,distance=..5] add astrbot_follow
# 交互实体属性配置
data modify entity @n[tag=astrbot_interaction_temp] width set value 1.5
data modify entity @n[tag=astrbot_interaction_temp] height set value -0.25
data modify entity @n[tag=astrbot_interaction_2_temp] width set value 1.5
data modify entity @n[tag=astrbot_interaction_2_temp] height set value 1.25
# 部署计数
scoreboard players add @s astrbot.bot_count 1
# 命名
data modify entity @n[tag=astrbot_root_temp,distance=..5] CustomName set value {"translate":"entity.astrbot.bot_ground"}
#初始化模块
data modify storage astrbot:terminal main.module set value 0b111
function astrbot:data/bot/summon/init