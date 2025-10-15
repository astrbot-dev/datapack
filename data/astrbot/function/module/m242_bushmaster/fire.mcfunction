execute at @s positioned ~ ~-0.5 ~ run summon minecraft:item_display ^-0.5 ^ ^ {Tags:["bullet","prefire"],item:{id:"air"},item_display:fixed,transformation:{right_rotation:[1f,-1f,-1f,1f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.75f,0.75f,1f]},teleport_duration:1}

execute as @s at @s run tp @e[tag=prefire] @s
execute as @s at @s run tp @e[tag=prefire] ~ ~ ~
execute as @s run scoreboard players set @e[tag=prefire] astr.flying_time 20

tag @e[tag=prefire,scores={astr.flying_time=0..}] remove prefire

execute as @s at @s run summon marker ^ ^ ^1.2 {Tags:[marker]}

execute as @e[tag=marker] run function astrbot:module/m242_bushmaster/pos
execute as @s run function astrbot:module/m242_bushmaster/lz2 with storage astrbot:module m242_bushmaster
kill @e[tag=marker] 

execute as @s run tag @s remove fire
execute as @s run scoreboard players remove @s astr.ammo 1