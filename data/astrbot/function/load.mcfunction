#用于记录及计算坐标的一般变量
scoreboard objectives add astr.x dummy
scoreboard objectives add astr.y dummy
scoreboard objectives add astr.z dummy
#通用变量（用假名区分，仅用于全局性的内部计算）
scoreboard objectives add astr.var dummy
# ^^^ 函数内部的临时变量让用这个吗111

scoreboard objectives add astr.func_var dummy

# 配置
scoreboard objectives add astr.config dummy

scoreboard players set max_mob_num astr.config 114
scoreboard players set monster_spawn_rate astr.config 10