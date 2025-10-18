data modify storage astrbot:temp createtable.item set from entity @s item
data modify storage astrbot:temp createtable.modules set value []

execute as @e[tag=astrbot.createtable.slot, distance=0..2, type=interaction] if score @s astrbot.createtable_id = curr_id astrbot.temp run function astrbot:createtable/block/create/create_bot/module

# remove bot model from createtable
data remove entity @s item

#if it's a light bot, summon a item
execute store result score bot_type astrbot.temp run data get storage astrbot:temp createtable.item.components."minecraft:custom_data".astrbot.type
data modify storage astrbot:temp createtable.item.components."minecraft:custom_data".astrbot.modules set from storage astrbot:temp createtable.modules
execute if score bot_type astrbot.temp matches 0..1 run return run function astrbot:createtable/block/create/light_bot
#otherwise, it's a heavy bot, so summon the bot entity
#TODO