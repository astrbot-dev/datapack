execute as @s at @s run tp @s ~ ~ ~ facing entity @e[tag=!laser,limit=1,sort=nearest,type=#minecraft:impact_projectiles,distance=..20]
execute as @s at @s run tag @e[tag=!laser,limit=1,sort=nearest,type=#minecraft:impact_projectiles,distance=..20] add laserlock

execute as @e[tag=laserlock] run function astrbot:module/active_defence_system/pos
execute store result storage astrbot:module active_defence_system.dx float 0.001 run scoreboard players get @e[tag=laserlock,limit=1] astr.x
execute store result storage astrbot:module active_defence_system.dy float 0.001 run scoreboard players get @e[tag=laserlock,limit=1] astr.y
execute store result storage astrbot:module active_defence_system.dz float 0.001 run scoreboard players get @e[tag=laserlock,limit=1] astr.z
execute at @s run function astrbot:module/active_defence_system/show with storage astrbot:module active_defence_system
tag @e[tag=laserlock] remove laserlock