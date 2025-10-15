execute store result score @s astr.x run data get entity @s Pos[0] 1000
execute store result score @s astr.y run data get entity @s Pos[1] 1000
execute store result score @s astr.z run data get entity @s Pos[2] 1000

execute store result storage astrbot:module m242_bushmaster.dx float 0.001 run scoreboard players get @s astr.x
execute store result storage astrbot:module m242_bushmaster.dy float 0.001 run scoreboard players get @s astr.y
execute store result storage astrbot:module m242_bushmaster.dz float 0.001 run scoreboard players get @s astr.z