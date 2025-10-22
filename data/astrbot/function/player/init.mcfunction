# 配置属性
    # 能量属性
    ## 上限
    scoreboard players set @s astrbot.max_player_power 100
    ## 初始值
    scoreboard players set @s astrbot.player_power 100
    ## 回复速度(度/6秒)
    scoreboard players set @s astrbot.player_power_regen 1


# Scoreboard Trigger 初始化设置
    # 终端触发器
    ## 模板
    scoreboard players set @s astrbot.module_terminal -1
    scoreboard players enable @s astrbot.module_terminal
    ## 解绑
    scoreboard players enable @s astrbot.unbind
    ## 跟随
    scoreboard players enable @s astrbot.follow
    ## 充电
    scoreboard players enable @s astrbot.battery