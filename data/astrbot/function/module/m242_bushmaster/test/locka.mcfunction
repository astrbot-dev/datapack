tag @s add testing
function astrbot:module/m242_bushmaster/test/test2
tp @s ~ ~ ~ facing entity @n[scores={astrbot.collision=0},tag=allowtrg] eyes
tag @s remove testing
tag @s add fire
execute if entity @n[scores={astrbot.collision=0},tag=allowtrg] as @s at @s run function astrbot:module/m242_bushmaster/main
tag @s remove fire