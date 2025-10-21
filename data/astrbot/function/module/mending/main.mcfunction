tag @s add mending
execute as @a[distance=..8] run function astrbot:module/mending/ciallo
execute as @a[distance=..8] run function astrbot:module/mending/pos
execute as @a[distance=..8] as @e[tag=mending] at @s run function astrbot:module/mending/show with storage astrbot:module
tag @s remove mending