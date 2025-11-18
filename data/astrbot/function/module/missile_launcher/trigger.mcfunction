#看看耗电
execute at @s as @n[tag=astrbot_heavy,tag=astrbot_missile_launcher] at @s unless score @s astrbot.player_power matches 10.. run return run tellraw @p {color:"red",translate:"tips.no_power"}


execute if entity @s[tag=lock] run return run tag @s add launch
tag @s add lock