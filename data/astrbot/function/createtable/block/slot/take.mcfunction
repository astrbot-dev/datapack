#context: player
function astrbot:createtable/block/slot/item_out

execute as @n[tag=astrbot.temp, distance=0..1, type=interaction] run function astrbot:createtable/block/slot/set_slot_to_empty

#update bot model
execute as @n[tag=astrbot.createtable.bot.model, distance=0..2, type=item_display] if score @s astrbot.createtable_id = curr_createtable astrbot.temp run function astrbot:data/bot/update_modules_model/0