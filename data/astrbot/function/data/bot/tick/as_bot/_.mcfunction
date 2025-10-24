# as: root; at: root

# 朝向更新(水平)
execute on passengers run rotate @s ~ 0
###⚠️ 这是可能是一个测试项 ⚠️###
# 仇恨消除
execute if data entity @s AngryAt run attribute @s follow_range modifier add astrbot -1 add_multiplied_total
execute unless data entity @s AngryAt run attribute @s follow_range modifier remove astrbot

# 类型
    # Ground
    execute if entity @s[tag=astrbot_ground] run function astrbot:data/bot/tick/as_bot/ground/_
    # Air
    execute if entity @s[tag=astrbot_air] run function astrbot:data/bot/tick/as_bot/air/_
    # Heavy
    execute if entity @s[tag=astrbot_heavy] run function astrbot:data/bot/tick/as_bot/heavy/_