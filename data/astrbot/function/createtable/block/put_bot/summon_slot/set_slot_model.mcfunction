execute store result score id astrbot.temp run data get storage astrbot:temp modules[0].module.module_id

# get module from module_id
function astrbot:util/_get_module_by_id

#ensure all custom_data is set
data modify entity @s item.components."minecraft:custom_data".astrbot set from storage astrbot:temp modules[0].module

tag @s remove astrbot.createtable.slot.empty
data remove storage astrbot:temp modules[0]