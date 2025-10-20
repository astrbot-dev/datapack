$execute as @s at @s facing entity @e[scores={astrbot.uid=$(target)},tag=!agm,tag=!Fire] feet positioned ^ ^ ^40 rotated as @s positioned ^ ^ ^200 facing entity @s feet positioned as @s run tp @s ^ ^ ^-0 facing ^ ^ ^-1

execute as @s at @s run tp @s ^ ^ ^0.5
$execute as @s at @s if entity @e[scores={astrbot.uid=$(target)},tag=!agm,distance=0..128] run tp @s ~ ~ ~ ~ ~-3
$execute as @s at @s unless entity @e[scores={astrbot.uid=$(target)},tag=!agm] run tp @s ~ ~ ~ ~ ~1
execute at @s run particle dust_color_transition{from_color: [1.0, 1, 1.0], scale: 1, to_color: [0.7, 0.7, 0.7]} ^ ^ ^-2 0.02 0.02 0.02 10 3 force
execute at @s positioned ~ ~ ~ if entity @e[distance=0.01..1.4,tag=!agm,type=!text_display] run tag @s add exp
execute at @s positioned ^ ^ ^ unless block ~ ~1 ~ air run tag @s add exp