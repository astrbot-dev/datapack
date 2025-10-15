#发射
execute as @e[tag=launch] at @s positioned ^ ^ ^60 at @e[distance=..59.9,sort=random] rotated as @s positioned ^ ^ ^1234 facing entity @s eyes positioned ^ ^ ^1234 positioned ~ ~-1 ~ run tag @e[distance=..1.5,limit=1,type=!item,type=!experience_orb,tag=!launch,tag=!agm,type=!minecraft:wither_skull] add uid
effect give @e[tag=uid] glowing 1 1
execute as @e[tag=uid] at @s store result score @s astr.uid run data get entity @s UUID[0]
execute as @e[tag=uid,limit=1] at @e[tag=launch] summon minecraft:armor_stand run tag @s add agmpre
execute as @e[tag=agmpre] at @s run function astrbot:module/missile_launcher/pre

execute unless entity @e[tag=uid] run tellraw @a[tag=launch] "\u00a74无目标"
tag @e remove launch
tag @e remove uid