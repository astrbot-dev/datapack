##这个记分项获取的是模块启禁用数据
#执行者：玩家；执行位置：玩家所在位置

#原始的“二进制”数据
execute store result storage astrbot:terminal main.module_bit int 1.0 run scoreboard players get @s astrbot.module_terminal
#获取玩家的UUID
data modify storage astrbot:terminal main.UUID set from entity @s UUID
#现在原始的二进制数据和玩家UUID都有了
function astrbot:terminal/deployed/module/get_data with storage astrbot:terminal main
#还原此触发器
scoreboard players set @s astrbot.module_terminal -1
scoreboard players enable @s astrbot.module_terminal