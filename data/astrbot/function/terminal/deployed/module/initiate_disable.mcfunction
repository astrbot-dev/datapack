#执行者：无人机展示实体；执行位置：玩家所在位置

#加上标签，这样后面就不用再遍历了：
tag @s add astrbot_terminal_operating
#默认禁用
data modify entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:0}].enabled set value false
execute if data entity @s item.components."minecraft:custom_data".astrbot{type:1} run return run data modify entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:1}].enabled set value false
execute if data entity @s item.components."minecraft:custom_data".astrbot{type:0} run return run data modify entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:2}].enabled set value false
data modify entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:3}].enabled set value false