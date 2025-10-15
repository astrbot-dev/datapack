execute as @e[tag=allowtrg,distance=..32] at @s summon marker run tag @s add mark
execute as @e[tag=allowtrg] at @s anchored eyes run tp @n[tag=mark] ^ ^ ^
execute as @e[tag=mark] at @s run tp @s ~ ~ ~ facing entity @e[tag=testing,limit=1] feet
execute as @e[tag=mark] at @s run function astrbot:module/m242_bushmaster/test/xray