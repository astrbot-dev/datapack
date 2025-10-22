# 配置 (玩家相关的初始化配置项请访问 --> 📄player/init.mcfunction)
    ###⚠️ 该配置项或许已被弃用 ⚠️###
    # 群系刷怪
    scoreboard objectives add astr.config dummy
        # 刷怪上限(仅统计自定义怪物)
        scoreboard players set max_mob_num astr.config 114
        # 刷怪概率（每tick尝试一次）（单位：千分之`N`，每次刷5~10只）
        scoreboard players set monster_spawn_rate astr.config 10


# 运算依赖
    # 通用变量
    scoreboard objectives add astrbot.var dummy
    # 通用常量
    scoreboard objectives add astr.consts dummy
    scoreboard players set 1 astr.consts 1
    scoreboard players set 2 astr.consts 2
    scoreboard players set 10 astr.consts 10
    # 坐标运算
    scoreboard objectives add astrbot.x dummy
    scoreboard objectives add astrbot.y dummy
    scoreboard objectives add astrbot.z dummy
# 逻辑依赖
    # 序列化uid
    scoreboard objectives add astrbot.uid dummy
# Player
    # 电量控制
    ## 电量
    scoreboard objectives add astrbot.player_power dummy
    ## 电量上限
    scoreboard objectives add astrbot.max_player_power dummy
    ## 电量恢复速度
    scoreboard objectives add astrbot.player_power_regen dummy
# Scoreboard trigger
    # 终端模块
    scoreboard objectives add astrbot.module_terminal trigger
    # 终端无人机解绑
    scoreboard objectives add astrbot.unbind trigger
    # 终端无人机跟随
    scoreboard objectives add astrbot.follow trigger
    # 终端无人机充电
    scoreboard objectives add astrbot.battery trigger
# Item trigger
    # 胡萝卜钓竿
    scoreboard objectives add astrbot.right_click minecraft.used:minecraft.carrot_on_a_stick
# 杂七杂八
    # ^^^ 函数内部的临时变量让用这个吗111
    scoreboard objectives add astr.func_var dummy