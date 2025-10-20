data modify storage astrbot:temp module_info.slot set value 2
data remove entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:2}]
data modify entity @s item.components."minecraft:custom_data".astrbot.modules append from storage astrbot:temp module_info