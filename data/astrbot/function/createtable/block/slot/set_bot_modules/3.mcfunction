data modify storage astrbot:temp module_info.slot set value 3
data remove entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:3}]
data modify entity @s item.components."minecraft:custom_data".astrbot.modules append from storage astrbot:temp module_info