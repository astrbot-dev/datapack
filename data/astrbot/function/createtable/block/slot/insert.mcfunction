# context: item

# if the slot is not empty
execute as @n[tag=astrbot.temp, distance=0..1, type=interaction] if entity @s[tag=!astrbot.createtable.slot.empty] run function astrbot:createtable/block/slot/item_out

data modify entity @n[tag=astrbot.temp, distance=0..1, type=item_display] item set from entity @s SelectedItem
item replace entity @s weapon.mainhand with air

data modify entity @n[tag=astrbot.temp, distance=0..1, type=item_display] view_range set value 1

#the slot is not empty now
tag @n[tag=astrbot.temp, distance=0..1, type=interaction] remove astrbot.createtable.slot.empty