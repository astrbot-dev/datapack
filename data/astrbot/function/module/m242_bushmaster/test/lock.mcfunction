#会被索敌的敌人
tag @e[distance=..32,type=creeper] add allowtrg
tag @e[distance=..32,type=skeleton] add allowtrg
 
tag @s add testing
execute as @e[tag=allowtrg,distance=..32] at @s anchored eyes facing entity @e[tag=testing,limit=1] feet run function astrbot:module/m242_bushmaster/test/ray3
execute as @n[scores={astrbot.collision=0},tag=allowtrg] at @s positioned ~ ~3 ~ run rotate @e[limit=1,tag=testing,sort=nearest] facing ~ ~-4.5 ~
tag @s remove testing
execute if entity @n[scores={astrbot.collision=0},tag=allowtrg] as @s at @s run function astrbot:module/m242_bushmaster/main

tag @e remove allowtrg
