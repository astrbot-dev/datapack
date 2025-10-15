tag @s add testing
function astrbot:module/m242_bushmaster/test/test2
tp @s ~ ~ ~ facing entity @n[scores={astr.collision=0},tag=allowtrg] eyes
tag @s remove testing
execute if entity @n[scores={astr.collision=0},tag=allowtrg] run tag @s add fire