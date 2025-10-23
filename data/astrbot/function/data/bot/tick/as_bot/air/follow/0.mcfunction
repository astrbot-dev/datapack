# 无人机跟随
    execute on owner run tag @s add astrbot_owner_temp
    #随机化速度等参数
    execute if entity @n[distance=6..,tag=astrbot_owner_temp] run scoreboard players set @s botai.vel 2800
    function astrbot:data/bot/tick/as_bot/air/follow/1 with entity @s data.offset