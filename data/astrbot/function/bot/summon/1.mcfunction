#as player
tag @n[tag=astrbot_root_temp,distance=..5] add astrbot_air
tag @n[tag=astrbot_root_temp,distance=..5] add astrbot_follow
data modify entity @n[tag=astrbot_interaction_temp] width set value 1.5
data modify entity @n[tag=astrbot_interaction_temp] height set value -0.5
data modify entity @n[tag=astrbot_interaction_2_temp] width set value 1.5
data modify entity @n[tag=astrbot_interaction_2_temp] height set value 0.5
data modify entity @n[tag=astrbot_root_temp,distance=..5] NoAI set value 1b

scoreboard players add @s astrbot.bot_count 1

#随机化跟随点偏移
data modify entity @n[tag=astrbot_root_temp,distance=..5] data.offset set value {x:0f,y:3f,z:0f}
execute store result entity @n[tag=astrbot_root_temp,distance=..5] data.offset.x float 0.01 run random value -400..400
execute store result entity @n[tag=astrbot_root_temp,distance=..5] data.offset.z float 0.01 run random value -400..400
execute store result entity @n[tag=astrbot_root_temp,distance=..5] data.offset.y float 0.01 run random value 250..450

data modify entity @n[tag=astrbot_root_temp,distance=..5] CustomName set value {"translate":"entity.astrbot.bot_air"}