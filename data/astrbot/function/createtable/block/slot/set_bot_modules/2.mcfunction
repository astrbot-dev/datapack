#context: item_display(astrbot.createtable.bot.model)

data modify storage astrbot:temp module_info.slot set value 2
data modify storage astrbot:temp module_info.enabled set value 1b
execute if data entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:2}].enabled store result storage astrbot:temp module_info.enabled byte 1.0 run data get entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:2}].enabled
data remove entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:2}]
data modify entity @s item.components."minecraft:custom_data".astrbot.modules append from storage astrbot:temp module_info