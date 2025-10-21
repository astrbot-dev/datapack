#context: interaction
execute on passengers run data modify storage astrbot:temp modules set from entity @s item.components."minecraft:custom_data".astrbot.modules

execute store result score slot astrbot.temp run data get storage astrbot:temp modules[0].slot
execute if score @s astrbot.slot = slot astrbot.temp on passengers run function astrbot:createtable/block/put_bot/summon_slot/set_slot_model
execute unless data storage astrbot:temp modules[0] run return 0

execute store result score slot astrbot.temp run data get storage astrbot:temp modules[0].slot
execute if score @s astrbot.slot = slot astrbot.temp on passengers run function astrbot:createtable/block/put_bot/summon_slot/set_slot_model
execute unless data storage astrbot:temp modules[0] run return 0

execute store result score slot astrbot.temp run data get storage astrbot:temp modules[0].slot
execute if score @s astrbot.slot = slot astrbot.temp on passengers run function astrbot:createtable/block/put_bot/summon_slot/set_slot_model
execute unless data storage astrbot:temp modules[0] run return 0

execute store result score slot astrbot.temp run data get storage astrbot:temp modules[0].slot
execute if score @s astrbot.slot = slot astrbot.temp on passengers run function astrbot:createtable/block/put_bot/summon_slot/set_slot_model