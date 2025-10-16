#用于记录及计算坐标的一般变量
scoreboard objectives add astrbot.x dummy
scoreboard objectives add astrbot.y dummy
scoreboard objectives add astrbot.z dummy
#通用变量（用假名区分，仅用于全局性的内部计算）
scoreboard objectives add astrbot.var dummy
#UID
scoreboard objectives add astrbot.uid dummy
#胡萝卜钓竿通用变量
scoreboard objectives add astrbot.right_click minecraft.used:minecraft.carrot_on_a_stick
#这是玩家身上的电量：
scoreboard objectives add astrbot.player_power dummy
# ^^^ 函数内部的临时变量让用这个吗111
scoreboard objectives add astr.func_var dummy