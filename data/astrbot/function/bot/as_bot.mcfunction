#机器人底盘为执行者执行tick函数
#as：root,at：root

#保证机器人水平朝向和根实体一致
function astrbot:bot/rotate

#模型设置（静止/移动中）
execute as @s[tag=astrbot_ground] run function astrbot:bot/model_0


#跟随函数
execute as @s[tag=astrbot_air,tag=astrbot_follow] run function astrbot:bot/follow_air
execute as @s[tag=astrbot_ground] run function astrbot:bot/follow_ground


#跟随型机器人防止自动吸附上船
execute as @s[tag=!astrbot_heavy] run ride @s dismount
execute as @s[tag=astrbot_heavy] run function astrbot:bot/ride


#尝试消除仇恨
function astrbot:bot/anger