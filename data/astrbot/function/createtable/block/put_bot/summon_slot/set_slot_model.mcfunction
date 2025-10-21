#context: item_display(slot)
execute store result score id astrbot.temp run data get storage astrbot:temp modules[0].module.module_id

# get module from module_id
function astrbot:util/_get_module_by_id

#ensure all custom_data is set
data modify entity @s item.components."minecraft:custom_data".astrbot set from storage astrbot:temp modules[0].module

execute if data storage astrbot:temp modules[0].module{module_type:0b} on vehicle run scoreboard players operation @s astrbot.slot_status = FULL astrbot.slot_status
execute if data storage astrbot:temp modules[0].module{module_type:1b} on vehicle run scoreboard players operation @s astrbot.slot_status = CROWDED astrbot.slot_status
execute if data storage astrbot:temp modules[0].module{module_type:2b} on vehicle run scoreboard players operation @s astrbot.slot_status = FULL astrbot.slot_status

execute on vehicle if entity @s[tag=astrbot.createtable.slot.attack] run function astrbot:createtable/block/slot/update_attack_slot_status