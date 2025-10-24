# 看看耗电
execute as @e[tag=lock] at @s as @n[tag=astrbot_heavy] at @s unless score @s astrbot.player_power matches 1.. run return run tellraw @p {color:"red",translate:"tips.no_power"}
execute as @e[tag=lock] at @s run scoreboard players remove @n[tag=astrbot_heavy] astrbot.player_power 1

execute if entity @s[tag=lock] run return run tag @s add launch
tag @s add lock