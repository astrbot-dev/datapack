#context: player
function astrbot:createtable/block/slot/item_out

execute as @n[tag=astrbot.temp, distance=0..1, type=interaction] run function astrbot:createtable/block/slot/set_slot_to_empty