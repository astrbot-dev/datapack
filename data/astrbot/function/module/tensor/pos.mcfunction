scoreboard players set 1 astrbot.y 0
execute store result score @s astrbot.x run data get entity @s Pos[0] 1
execute store result score @s astrbot.y run data get entity @s Pos[1] 1
execute store result score @s astrbot.z run data get entity @s Pos[2] 1
scoreboard players operation @s astrbot.y += 1 astrbot.y
execute store result storage astrbot:module dx int 1 run scoreboard players get @s astrbot.x
execute store result storage astrbot:module dy int 1 run scoreboard players get @s astrbot.y
execute store result storage astrbot:module dz int 1 run scoreboard players get @s astrbot.z