#context item_display(bot.model)

#set lore
data modify storage astrbot:temp createtable.lore set value []
function astrbot:createtable/block/create/create_bot/set_lore
data modify storage astrbot:temp createtable.item.components."minecraft:lore" set from storage astrbot:temp createtable.lore

data modify storage astrbot:temp arg.item set from entity @s item
function astrbot:util/macro/summon_item with storage astrbot:temp arg