# As bot(root)
execute as @e[type=minecraft:wolf,tag=astrbot_root] at @s run function astrbot:data/bot/tick/as_bot/_

# Clock event
    # Tick
    ## 根实体死亡监听
    execute as @e[tag=astrbot_display] at @s run function astrbot:data/bot/clear/die