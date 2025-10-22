#执行者：玩家；执行位置：玩家所在位置

#从低位到高位提取
scoreboard players operation #temp astrbot.var = #bitwise_storage astrbot.var
scoreboard players operation #temp astrbot.var %= 2 astr.consts
scoreboard players operation #bitwise_storage astrbot.var /= 2 astr.consts
#位数=槽位
execute store result storage astrbot:terminal slot int 1.0 run scoreboard players get #bit astrbot.var
execute as @e[type=item_display,tag=astrbot_display,tag=astrbot_terminal_operating,distance=0..] run function astrbot:terminal/deployed/module/slot with storage astrbot:terminal
#读取下一位：
scoreboard players add #bit astrbot.var 1
execute if data storage astrbot:terminal main{bot_type:0} if score #bit astrbot.var matches 0..2 run function astrbot:terminal/deployed/module/bitwise
execute if data storage astrbot:terminal main{bot_type:1} if score #bit astrbot.var matches 0..1 run function astrbot:terminal/deployed/module/bitwise
execute if data storage astrbot:terminal main{bot_type:2} if score #bit astrbot.var matches 0..3 run function astrbot:terminal/deployed/module/bitwise