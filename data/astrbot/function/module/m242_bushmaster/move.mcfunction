execute as @e[scores={astrbot.flying_time=..19},tag=bullet] run data merge entity @s {item:{id:end_rod}}

kill @e[tag=marker]
execute at @s if entity @s[tag=!hit,tag=!hitb] run tp @s ^ ^ ^0.4
execute at @s if entity @s[tag=hit] run tp @s ^ ^ ^0.01

execute at @s if score @s astrbot.flying_time matches 1..19 if entity @e[tag=!bullet,tag=!M134,dx=0,dy=0,dz=0,type=!item] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!bullet,tag=!M134,dx=0,dy=0,dz=0,type=!item] run tag @s add hit
execute as @s store result score @s astrbot.collision run function #bs.hitbox:is_entity_in_blocks_collision
execute at @s if score @s astrbot.flying_time matches 1..19 if score @s astrbot.collision matches 1 run tag @s add hitb