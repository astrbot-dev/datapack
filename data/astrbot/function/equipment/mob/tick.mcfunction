execute as @a[distance=..8] run effect give @s slowness 2 0

execute as @a[distance=..8] at @s run particle electric_spark ~ ~1 ~ 0.5 0.5 0.5 0 3

execute as @a[distance=..8] if predicate {condition:"random_chance",chance:0.05} run scoreboard players add @s astrbot.player_power 1