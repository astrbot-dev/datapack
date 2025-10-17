data modify storage astrbot:temp createtable.bot set from entity @s item.components."minecraft:custom_data"
data modify storage astrbot:temp createtable.bot.astrbot.modules set value []

execute as @e[tag=astrbot.createtable.slot, distance=0..1, limit=4, tag=!astrbot.createtable.slot.empty, type=item_display] on passengers run function astrbot:createtable/block/create/create_bot/module
