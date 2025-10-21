#context: item_display(slot)
execute store result score id astrbot.temp run data get storage astrbot:temp modules[0].module.module_id

# get module from module_id
function astrbot:util/_get_module_by_id

#ensure all custom_data is set
data modify entity @s item.components."minecraft:custom_data".astrbot set from storage astrbot:temp modules[0].module

#each bot can only install one attack module
execute if data storage astrbot:temp modules[0].module{module_type:0b} as @e[tag=astrbot.createtable.slot.attack, type=interaction, distance=0..2] if score @s astrbot.createtable_id = curr_createtable astrbot.temp run tag @s add astrbot.createtable.slot.disable

execute on vehicle run tag @s remove astrbot.createtable.slot.empty
data remove storage astrbot:temp modules[0]