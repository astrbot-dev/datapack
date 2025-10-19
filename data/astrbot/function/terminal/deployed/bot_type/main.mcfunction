data modify storage astrbot:terminal temp set from entity @s item.components."minecraft:custom_data".uid.id
execute if data entity @s item.components."minecraft:custom_data".astrbot{type:0} run function astrbot:terminal/deployed/bot_type/0
execute if data entity @s item.components."minecraft:custom_data".astrbot{type:1} run function astrbot:terminal/deployed/bot_type/1
execute if data entity @s item.components."minecraft:custom_data".astrbot{type:2} run function astrbot:terminal/deployed/bot_type/2