kill @e[scores={astrbot.flying_time=..0}]
execute as @e[tag=bullet] run function astrbot:module/m242_bushmaster/move
execute as @e[tag=bullet] run function astrbot:module/m242_bushmaster/move
execute as @e[tag=bullet] run function astrbot:module/m242_bushmaster/move
execute as @e[tag=bullet] run function astrbot:module/m242_bushmaster/move
execute as @e[tag=bullet] run function astrbot:module/m242_bushmaster/move

execute as @e[tag=M134,tag=fire,scores={astrbot.ammo=0..}] run function astrbot:module/m242_bushmaster/fire
execute as @e[tag=bullet,tag=hit] run function astrbot:module/m242_bushmaster/hit
execute as @e[tag=bullet,tag=hitb] run function astrbot:module/m242_bushmaster/hit

execute as @e[scores={astrbot.flying_time=1..}] run scoreboard players remove @s astrbot.flying_time 1
#锁定敌人
execute as @e[tag=M134] at @s run function astrbot:module/m242_bushmaster/test/lock
schedule function astrbot:module/m242_bushmaster/tick 1t