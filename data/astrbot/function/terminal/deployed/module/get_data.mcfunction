#执行者：玩家；执行位置：玩家所在位置

#这是玩家当前正在操作的无人机的uid：
$data modify storage astrbot:terminal main.uid set from storage astrbot:terminal player."$(UUID)".current_operation
#这是按位存储的数据，把伪二进制转换为真二进制：
$data modify storage astrbot:terminal main.module set value 0b$(module_bit)
execute store result score #bitwise_storage astrbot.var run data get storage astrbot:terminal main.module
#先初始化：假设每个槽位都是被禁用的，根据当前正在操作的无人机遍历无人机的uid：
execute store result score #temp1 astrbot.var run data get storage astrbot:terminal main.uid
execute as @e[type=item_display,tag=astrbot_display,distance=0..] run function astrbot:terminal/deployed/module/initiate
#截胡：如果没电了，那就G
execute if score @s astrbot.player_power matches ..0 run return run function astrbot:terminal/deployed/module/no_power
#计算每个位：
scoreboard players set #bit astrbot.var 0
function astrbot:terminal/deployed/module/bitwise
#把遍历无人机uid用到的标签去掉：
tag @e[type=item_display,tag=astrbot_display,tag=astrbot_terminal_operating,distance=0..] remove astrbot_terminal_operating