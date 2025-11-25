
data modify entity @s teleport_duration set value 0

execute as @p[tag=locking,distance=0..16] at @s anchored eyes facing entity @e[tag=hud,limit=1] eyes run tp @e[tag=hud,limit=3] ^ ^ ^1.5
execute as @p[tag=locking,distance=16..32] at @s anchored eyes facing entity @e[tag=hud,limit=1] eyes run tp @e[tag=hud,limit=3] ^ ^ ^1.7
execute as @p[tag=locking,distance=32..48] at @s anchored eyes facing entity @e[tag=hud,limit=1] eyes run tp @e[tag=hud,limit=3] ^ ^ ^1.9
execute as @p[tag=locking,distance=48..64] at @s anchored eyes facing entity @e[tag=hud,limit=1] eyes run tp @e[tag=hud,limit=3] ^ ^ ^2.1
execute as @p[tag=locking,distance=64..80] at @s anchored eyes facing entity @e[tag=hud,limit=1] eyes run tp @e[tag=hud,limit=3] ^ ^ ^2.3
execute as @p[tag=locking,distance=80..96] at @s anchored eyes facing entity @e[tag=hud,limit=1] eyes run tp @e[tag=hud,limit=3] ^ ^ ^2.5
execute as @p[tag=locking,distance=96..112] at @s anchored eyes facing entity @e[tag=hud,limit=1] eyes run tp @e[tag=hud,limit=3] ^ ^ ^2.7
execute as @p[tag=locking,distance=112..128] at @s anchored eyes facing entity @e[tag=hud,limit=1] eyes run tp @e[tag=hud,limit=3] ^ ^ ^3


data modify entity @s teleport_duration set value 2

execute if entity @p[tag=locking,predicate=astrbot:player/moving] run data modify entity @s text_opacity set value 0
execute if entity @p[tag=locking,predicate=!astrbot:player/moving] run data modify entity @s text_opacity set value 255




tag @s remove hud

