data modify storage astrbot:temp pos set from entity @s Pos
data modify storage astrbot:temp dx set from storage astrbot:temp pos[0]
data modify storage astrbot:temp dz set from storage astrbot:temp pos[2]
#
scoreboard players set 1000 astrbot.temp 1000
execute store result score y astrbot.temp run data get storage astrbot:temp pos[1] 1000
scoreboard players operation y astrbot.temp += 1000 astrbot.temp
execute store result storage astrbot:temp dy float 0.001 run scoreboard players get y astrbot.temp