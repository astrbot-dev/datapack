function astrbot:createtable/block/slot/item_out
data modify entity @n[tag=astrbot.temp, distance=0..1, type=item_display] view_range set value 0
data remove entity @n[tag=astrbot.temp, distance=0..1, type=item_display] item

# the slot is empty now
execute as @n[tag=astrbot.temp, distance=0..1, type=interaction] run tag @s add astrbot.createtable.slot.empty