$execute as @s at @s facing entity @e[scores={astrbot.uid=$(target)},tag=!agm] feet positioned ^ ^ ^40 rotated as @s positioned ^ ^ ^280 facing entity @s feet positioned as @s run tp @s ^ ^ ^-0 facing ^ ^ ^-1

execute as @s at @s run tp @s ^ ^ ^0.7
$execute as @s at @s if entity @e[scores={astrbot.uid=$(target)},tag=!agm,distance=10..128] run tp @s ~ ~ ~ ~ ~-2
$execute as @s at @s unless entity @e[scores={astrbot.uid=$(target)},tag=!agm] run tp @s ~ ~ ~ ~ ~2
execute at @s run particle cloud ~ ~ ~ 0 0 0 0 3 force
execute at @s positioned ~ ~ ~ if entity @e[distance=0.01..1,tag=!agm] run tag @s add exp
execute at @s positioned ^ ^ ^ unless block ~ ~1 ~ air run tag @s add exp