execute unless data entity @n[tag=astrbot.bot.temp,distance=0..1] item.components."minecraft:custom_data".astrbot.modules[{module:{module_id:10b}}].module.items[0] run return 0

data modify storage astrbot:temp arg set value {}
data modify storage astrbot:temp arg.item set from entity @n[tag=astrbot.bot.temp,distance=0..1] item.components."minecraft:custom_data".astrbot.modules[{module:{module_id:10b}}].module.items[-1]
data remove entity @n[tag=astrbot.bot.temp,distance=0..1] item.components."minecraft:custom_data".astrbot.modules[{module:{module_id:10b}}].module.items[-1]
execute at @s anchored eyes positioned ^ ^ ^0.2 run function astrbot:util/macro/summon_item with storage astrbot:temp arg

tag @s remove astrbot.bot.temp