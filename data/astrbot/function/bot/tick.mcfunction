#tick函数

#保证机器人水平朝向和根实体一致
execute as @e[type=wolf,tag=astrbot_root] at @s run function astrbot:bot/rotate

#飞行类跟随函数
execute as @e[type=wolf,tag=astrbot_follow] at @s run function astrbot:bot/follow

#重型类吸附函数
execute as @e[type=wolf,tag=astrbot_heavy] at @s run function astrbot:bot/ride