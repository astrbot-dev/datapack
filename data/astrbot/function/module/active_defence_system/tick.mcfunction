execute as @e[tag=aps] at @s if entity @e[type=arrow,tag=!apshit,limit=1,sort=nearest,distance=..20] run function astrbot:module/active_defence_system/main
scoreboard players remove @e[scores={astr.hit=0..}] astr.hit 1
kill @e[scores={astr.hit=..0},type=!player]