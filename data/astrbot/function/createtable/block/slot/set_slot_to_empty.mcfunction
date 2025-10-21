#context: interaction
execute on passengers run data remove entity @s item

# the slot is empty now
tag @s add astrbot.createtable.slot.empty

scoreboard players operation slot astrbot.temp = @s astrbot.slot
execute as @e[tag=astrbot.createtable.bot.model, distance=0..1, type=item_display] if score @s astrbot.createtable_id = curr_createtable astrbot.temp run function astrbot:createtable/block/slot/set_slot_to_empty/qwq

# if this slot is attack slot, enable another attack slot
execute if entity @s[tag=astrbot.createtable.slot.attack] as @n[sort=nearest, tag=astrbot.createtable.slot.attack] if score @s astrbot.createtable_id = curr_createtable astrbot.temp run tag @s remove astrbot.createtable.slot.disable