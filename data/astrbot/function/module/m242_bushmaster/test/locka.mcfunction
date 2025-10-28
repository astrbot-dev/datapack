tag @s add testing
function astrbot:module/m242_bushmaster/test/test2
execute as @n[scores={astrbot.collision=0},tag=allowtrg] at @s positioned ~ ~3 ~ run rotate @e[limit=1,tag=testing,sort=nearest] facing ~ ~-4.5 ~
tag @s remove testing
execute if entity @n[scores={astrbot.collision=0},tag=allowtrg] as @s at @s run function astrbot:module/m242_bushmaster/main
