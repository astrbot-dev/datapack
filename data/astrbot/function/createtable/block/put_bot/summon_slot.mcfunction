scoreboard players set temp astrbot.slot 0

execute if score type astrbot.temp matches 0 run return run function astrbot:createtable/block/put_bot/summon_slot/type_0
execute if score type astrbot.temp matches 1 run return run function astrbot:createtable/block/put_bot/summon_slot/type_1
function astrbot:createtable/block/put_bot/summon_slot/type_2
