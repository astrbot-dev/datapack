#执行者：无人机展示实体；执行位置：玩家所在位置

#加上标签，这样后面就不用再遍历了：
tag @s add astrbot_terminal_operating
#默认禁用
data modify entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:0b}].enabled set value false
data modify entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:1b}].enabled set value false
data modify entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:2b}].enabled set value false
data modify entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:3b}].enabled set value false