execute if score @s astrbot.place_createtable matches 1.. run return run function astrbot:createtable/block/put
execute if entity @s[tag=!astrbot.is_sneaking] if predicate astrbot:player/is_sneaking at @s run function astrbot:createtable/player/is_sneaking
execute if entity @s[tag=astrbot.is_sneaking] unless predicate astrbot:player/is_sneaking at @s run function astrbot:createtable/player/not_sneaking
execute unless score displaying_error astrbot.temp matches 0.. if items entity @s weapon.* *[custom_data~{"id":"astrbot:bot"}] at @s run function astrbot:createtable/player/guide/put_bot
execute unless score displaying_error astrbot.temp matches 0.. if items entity @s weapon.mainhand *[custom_data~{astrbot:{type:"module"}}] at @s run function astrbot:createtable/player/guide/insert_module
execute at @s as @e[distance=..10, tag=astrbot.createtable, type=marker] at @s run function astrbot:createtable/block_tick