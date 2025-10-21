#as player
tag @n[tag=astrbot_root_temp,distance=..5] add astrbot_heavy
data modify entity @n[tag=astrbot_root_temp,distance=..5] NoAI set value 1b

data modify entity @n[tag=astrbot_interaction_temp] width set value 1.8
data modify entity @n[tag=astrbot_interaction_temp] height set value -0.2
data modify entity @n[tag=astrbot_interaction_2_temp] width set value 1.8
data modify entity @n[tag=astrbot_interaction_2_temp] height set value 2

data modify entity @n[tag=astrbot_root_temp,distance=..5] CustomName set value {"translate":"entity.astrbot.bot_heavy"}