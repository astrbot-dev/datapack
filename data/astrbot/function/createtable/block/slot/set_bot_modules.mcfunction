#context: interaction(astrbot.createtable.slot)

execute on passengers run data modify storage astrbot:temp module_info.module set from entity @s item.components."minecraft:custom_data".astrbot

execute if score @s astrbot.slot matches 0 as @n[tag=astrbot.createtable.bot.model, distance=0..2] run function astrbot:createtable/block/slot/set_bot_modules/0
execute if score @s astrbot.slot matches 1 as @n[tag=astrbot.createtable.bot.model, distance=0..2] run function astrbot:createtable/block/slot/set_bot_modules/1
execute if score @s astrbot.slot matches 2 as @n[tag=astrbot.createtable.bot.model, distance=0..2] run function astrbot:createtable/block/slot/set_bot_modules/2
execute if score @s astrbot.slot matches 3 as @n[tag=astrbot.createtable.bot.model, distance=0..2] run function astrbot:createtable/block/slot/set_bot_modules/3

function astrbot:bot/update_modules_model