scoreboard players operation curr_createtable astrbot.temp = @s astrbot.createtable_id

# set bot model
execute on passengers run item replace entity @s contents from entity @p[tag=astrbot.putting_bot, distance=0..7] weapon.mainhand

# disable createtable interaction
data merge entity @s {height: 0, width: 0}

# slot
execute store result score type astrbot.temp run data get entity @s item.components."minecraft:custom_data".astrbot.type
function astrbot:createtable/block/put_bot/summon_slot

data modify storage astrbot:temp modules set from entity @s item.components."minecraft:custom_data".astrbot.modules

execute store result score slot astrbot.temp run data get storage astrbot:temp modules[0].slot
execute as @e[distance=0..1, type=interaction, tag=astrbot.just, limit=4, tag=astrbot.createtable.slot.empty] if score @s astrbot.slot = slot astrbot.temp on passengers run function astrbot:createtable/block/put_bot/set_slot_model
execute unless data storage astrbot:temp modules[0] run return 0
execute store result score slot astrbot.temp run data get storage astrbot:temp modules[0].slot
execute as @e[distance=0..1, type=interaction, tag=astrbot.just, limit=4, tag=astrbot.createtable.slot.empty] if score @s astrbot.slot = slot astrbot.temp on passengers run function astrbot:createtable/block/put_bot/set_slot_model
execute unless data storage astrbot:temp modules[0] run return 0
execute store result score slot astrbot.temp run data get storage astrbot:temp modules[0].slot
execute as @e[distance=0..1, type=interaction, tag=astrbot.just, limit=4, tag=astrbot.createtable.slot.empty] if score @s astrbot.slot = slot astrbot.temp on passengers run function astrbot:createtable/block/put_bot/set_slot_model
execute unless data storage astrbot:temp modules[0] run return 0
execute store result score slot astrbot.temp run data get storage astrbot:temp modules[0].slot
execute as @e[distance=0..1, type=interaction, tag=astrbot.just, limit=4, tag=astrbot.createtable.slot.empty] if score @s astrbot.slot = slot astrbot.temp on passengers run function astrbot:createtable/block/put_bot/set_slot_model