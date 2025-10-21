#context: interaction
execute on passengers run data remove entity @s item

# the slot is empty now
tag @s add astrbot.createtable.slot.empty

# if this slot is attack slot, enable another attack slot
execute if entity @s[tag=astrbot.createtable.slot.attack] as @n[sort=nearest, tag=astrbot.createtable.slot.attack] if score @s astrbot.createtable_id = curr_createtable astrbot.temp run tag @s remove astrbot.createtable.slot.disable