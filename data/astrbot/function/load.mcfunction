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
## 电量
scoreboard objectives add astrbot.player_power dummy
## 电量上限
scoreboard objectives add astrbot.max_player_power dummy
## 电量恢复速度
scoreboard objectives add astrbot.player_power_regen dummy
#终端模板触发器
scoreboard objectives add astrbot.module_terminal trigger
scoreboard players set @a astrbot.module_terminal -1
scoreboard players enable @a astrbot.module_terminal
#终端无人机部署触发器
scoreboard objectives add astrbot.follower_terminal trigger
scoreboard players enable @a astrbot.follower_terminal
#终端无人机解绑触发器
scoreboard objectives add astrbot.unbind trigger
scoreboard players enable @a astrbot.unbind
# ^^^ 函数内部的临时变量让用这个吗111
scoreboard objectives add astr.func_var dummy