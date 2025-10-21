scoreboard players set 1000 astrbot.y 1000
execute store result score @s astrbot.x run data get entity @s Pos[0] 1000
execute store result score @s astrbot.y run data get entity @s Pos[1] 1000
execute store result score @s astrbot.z run data get entity @s Pos[2] 1000
scoreboard players operation @s astrbot.y += 1000 astrbot.y
execute store result storage astrbot:module dx float 0.001 run scoreboard players get @s astrbot.x
execute store result storage astrbot:module dy float 0.001 run scoreboard players get @s astrbot.y
execute store result storage astrbot:module dz float 0.001 run scoreboard players get @s astrbot.z