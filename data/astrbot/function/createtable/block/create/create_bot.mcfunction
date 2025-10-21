data modify storage astrbot:temp createtable.item set from entity @s item

# remove bot model from createtable
data remove entity @s item

#set lore
data modify storage astrbot:temp createtable.lore set value []
function astrbot:createtable/block/create/create_bot/set_lore
execute if data storage astrbot:temp createtable.lore[0] run data modify storage astrbot:temp createtable.item.components."minecraft:lore" set from storage astrbot:temp createtable.lore

execute positioned ~ ~0.8 ~ run function astrbot:util/macro/summon_item with storage astrbot:temp createtable