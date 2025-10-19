#tick函数

#以机器人根实体为执行者执行
execute as @e[type=wolf,tag=astrbot_root] at @s run function astrbot:bot/as_bot

execute as @e[tag=astrbot_display] at @s run function astrbot:bot/clear/check_