#会被索敌的敌人
tag @e[distance=..32,type=#astrbot:m242_lock] add allowtrg
 
tag @s add M242_lock
execute as @e[tag=allowtrg,distance=..32] at @s anchored eyes facing entity @e[tag=M242_lock,limit=1] feet run function astrbot:module/m242_bushmaster/ray
execute as @n[scores={astrbot.collision=0},tag=allowtrg] at @s positioned ~ ~3 ~ run rotate @e[limit=1,tag=M242_lock,sort=nearest] facing ~ ~-4.5 ~
tag @s remove M242_lock
execute if entity @n[scores={astrbot.collision=0},tag=allowtrg] if function astrbot:module/m242_bushmaster/consume as @s at @s run function astrbot:module/m242_bushmaster/main

tag @e remove allowtrg
