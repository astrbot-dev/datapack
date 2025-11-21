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
execute if data entity @n[tag=astrbot_display_temp] item.components."minecraft:custom_name" run data modify entity @n[tag=astrbot_root_temp,distance=..5] CustomName set from entity @n[tag=astrbot_display_temp] item.components."minecraft:custom_name"
#血量
attribute @n[tag=astrbot_root_temp,distance=..5] max_health base set 100
data modify entity @n[tag=astrbot_root_temp,distance=..5] Health set value 100f

#朝向
execute store result score @s astrbot.player_rotation run data get entity @s Rotation[0]
execute if score @s astrbot.player_rotation matches -45..44 run data modify entity @n[tag=astrbot_root_temp,distance=..5] Rotation set value [0f,0f]
execute if score @s astrbot.player_rotation matches 45..134 run data modify entity @n[tag=astrbot_root_temp,distance=..5] Rotation set value [90f,0f]
execute if score @s astrbot.player_rotation matches 135..180 run data modify entity @n[tag=astrbot_root_temp,distance=..5] Rotation set value [180f,0f]
execute if score @s astrbot.player_rotation matches -179..-136 run data modify entity @n[tag=astrbot_root_temp,distance=..5] Rotation set value [180f,0f]
execute if score @s astrbot.player_rotation matches -135..-46 run data modify entity @n[tag=astrbot_root_temp,distance=..5] Rotation set value [-90f,0f]



#初始化模块
data modify storage astrbot:terminal main.module set value 0b1111
function astrbot:data/bot/summon/init