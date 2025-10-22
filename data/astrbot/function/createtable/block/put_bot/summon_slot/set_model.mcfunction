
#context: interaction
data modify storage astrbot:temp modules set from storage astrbot:temp modules_b 

scoreboard players reset slot astrbot.temp
execute unless data storage astrbot:temp modules[0] run return 0
execute if data storage astrbot:temp modules[0].module store result score slot astrbot.temp run data get storage astrbot:temp modules[0].slot
execute if score @s astrbot.slot = slot astrbot.temp on passengers run return run function astrbot:createtable/block/put_bot/summon_slot/set_slot_model
data remove storage astrbot:temp modules[0]

scoreboard players reset slot astrbot.temp
execute unless data storage astrbot:temp modules[0] run return 0
execute store result score slot astrbot.temp run data get storage astrbot:temp modules[0].slot
execute if score @s astrbot.slot = slot astrbot.temp on passengers run return run function astrbot:createtable/block/put_bot/summon_slot/set_slot_model
data remove storage astrbot:temp modules[0]

scoreboard players reset slot astrbot.temp
execute unless data storage astrbot:temp modules[0] run return 0
execute if data storage astrbot:temp modules[0].module store result score slot astrbot.temp run data get storage astrbot:temp modules[0].slot
execute if score @s astrbot.slot = slot astrbot.temp on passengers run return run function astrbot:createtable/block/put_bot/summon_slot/set_slot_model
data remove storage astrbot:temp modules[0]

scoreboard players reset slot astrbot.temp
execute unless data storage astrbot:temp modules[0] run return 0
execute if data storage astrbot:temp modules[0].module store result score slot astrbot.temp run data get storage astrbot:temp modules[0].slot
execute if score @s astrbot.slot = slot astrbot.temp on passengers run return run function astrbot:createtable/block/put_bot/summon_slot/set_slot_model