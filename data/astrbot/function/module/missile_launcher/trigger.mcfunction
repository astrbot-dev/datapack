#看看耗电
execute at @s unless entity @e[tag=astrbot_heavy,tag=astrbot_missile_launcher,scores={astrbot.player_power=10..},distance=..128] run return run tellraw @p {color:"red",translate:"tips.no_power"}


execute if entity @s[tag=lock] run return run tag @s add launch
tag @s remove lock