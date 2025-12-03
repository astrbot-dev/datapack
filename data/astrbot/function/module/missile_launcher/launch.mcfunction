#发射
execute as @s run tag @e[tag=lockon] add uid
execute if entity @e[tag=uid] at @s run playsound minecraft:entity.wither.shoot block @a ~ ~ ~
execute as @e[tag=uid] at @s store result score @s astrbot.uid run data get entity @s UUID[0]
execute as @e[tag=uid,limit=1] at @e[tag=launch] at @n[tag=astrbot_heavy,tag=astrbot_missile_launcher,scores={astrbot.player_power=10..}] positioned ~ ~1.5 ~ summon minecraft:item_display run tag @s add agmpre
execute as @e[tag=agmpre] at @s run function astrbot:module/missile_launcher/pre

execute unless entity @e[tag=uid] run tellraw @s "\u00a74无目标"

execute if entity @e[tag=uid] run scoreboard players remove @n[tag=astrbot_heavy,tag=astrbot_missile_launcher,scores={astrbot.player_power=10..}] astrbot.player_power 10

execute if entity @e[tag=uid] run advancement grant @s only astrbot:_display/missile


tag @s remove launch
tag @s remove lock
tag @e remove uid