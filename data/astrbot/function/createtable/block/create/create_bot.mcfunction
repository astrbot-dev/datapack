#context item_display(bot.model)

data remove storage astrbot:temp createtable
data modify storage astrbot:temp createtable.item set from entity @s item

# remove bot model from createtable
data remove entity @s item

#set lore
data modify storage astrbot:temp createtable.lore set value []
function astrbot:createtable/block/create/create_bot/set_lore
data modify storage astrbot:temp createtable.item.components."minecraft:lore" set from storage astrbot:temp createtable.lore

#kill slot interaction
execute as @e[tag=astrbot.createtable.slot, distance=0..2, type=interaction] if score @s astrbot.createtable_id = curr_createtable astrbot.temp run function astrbot:createtable/block/create/create_bot/kill_slot

execute positioned ~ ~0.8 ~ run function astrbot:util/macro/summon_item with storage astrbot:temp createtable