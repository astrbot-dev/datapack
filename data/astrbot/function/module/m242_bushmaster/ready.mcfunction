function astrbot:module/m242_bushmaster/pos
scoreboard players operation @s astrbot.x -= @e[tag=fire,limit=1] astrbot.x
scoreboard players operation @s astrbot.y -= @e[tag=fire,limit=1] astrbot.y
scoreboard players operation @s astrbot.z -= @e[tag=fire,limit=1] astrbot.z

execute store result storage astrbot:module rt0 float -1 run data get entity @e[tag=fire,limit=1] Rotation[0]
execute store result storage astrbot:module rt1 float -1 run data get entity @e[tag=fire,limit=1] Rotation[1]
execute store result storage astrbot:module rt2 float 1 run data get entity @e[tag=fire,limit=1] Rotation[0]
execute store result storage astrbot:module rt3 float 1 run data get entity @e[tag=fire,limit=1] Rotation[1]
execute store result storage astrbot:module dx float 0.005 run scoreboard players get @s astrbot.x
execute store result storage astrbot:module dy float 0.005 run scoreboard players get @s astrbot.y
execute store result storage astrbot:module dz float 0.005 run scoreboard players get @s astrbot.z
function astrbot:module/m242_bushmaster/ready2 with storage astrbot:module