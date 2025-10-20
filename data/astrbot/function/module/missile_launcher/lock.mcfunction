execute as @e[tag=lock] at @s positioned ^ ^ ^64 run scoreboard players set @e[distance=..64,tag=!lock,tag=!agm,type=!item_display,type=!block_display,type=!text_display,type=!item,type=!interaction] astrbot.target 1
execute as @e[tag=lock] at @s anchored eyes run function astrbot:module/missile_launcher/ray

execute as @e[scores={astrbot.target=2}] at @s run function astrbot:module/missile_launcher/lockon
execute as @e[scores={astrbot.target=1}] at @s run function astrbot:module/missile_launcher/locking

scoreboard players reset @e astrbot.target
execute as @e[type=minecraft:text_display,tag=locksym] unless score @s astrbot.missile_launcher_time matches -1..100 run scoreboard players set @s astrbot.missile_launcher_time 3