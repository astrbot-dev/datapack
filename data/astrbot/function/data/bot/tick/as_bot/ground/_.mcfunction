# Sound
    # 移动
    execute if predicate astrbot:bot/moving_ground run function astrbot:data/bot/tick/as_bot/ground/sound/moving
    # 待机
    execute unless predicate astrbot:bot/moving_ground run function astrbot:data/bot/tick/as_bot/ground/sound/stop

# 模型动画
    # 移动
    execute if predicate astrbot:bot/moving_ground on passengers run item modify entity @s contents astrbot:bot/ground/moving
    # 静止
    execute unless predicate astrbot:bot/moving_ground on passengers run item modify entity @s contents astrbot:bot/ground/stop

# 跟随状态
    # 跟随
    execute if entity @s[tag=astrbot_follow] run data modify entity @s Sitting set value false
    # 静止
    execute unless entity @s[tag=astrbot_follow] run data modify entity @s Sitting set value true

# 骑乘禁止(防船吸)
ride @s dismount