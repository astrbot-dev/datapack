data modify storage astrbot:temp module_info.slot set value 0
data remove entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:0}]
data modify entity @s item.components."minecraft:custom_data".astrbot.modules append from storage astrbot:temp module_info