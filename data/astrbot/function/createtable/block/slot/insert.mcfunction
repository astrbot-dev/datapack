# context: player

# heavy attack modules like missile or negative effect generator can only be installed on heavy bot
execute \
    if items entity @s weapon.mainhand *[custom_data~{module_type:2}] \
    as @e[tag=astrbot.createtable.bot.model, distance=0..1, type=item_display] if score @s astrbot.createtable_id = curr_createtable astrbot.temp \
    unless items entity @s contents *[custom_data~{astrbot:{type:2}}] \
    run return 0

# if the slot is not empty
execute as @n[tag=astrbot.temp, distance=0..1, type=interaction] if entity @s[tag=!astrbot.createtable.slot.empty] run function astrbot:createtable/block/slot/item_out

data modify entity @n[tag=astrbot.temp, distance=0..1, type=item_display] item set from entity @s SelectedItem
item replace entity @s weapon.mainhand with air

# set bot modules data and update bot model
execute as @n[tag=astrbot.temp, distance=0..1, type=interaction] run function astrbot:createtable/block/slot/set_bot_modules

#the slot is not empty now
execute as @n[tag=astrbot.temp, distance=0..1, type=interaction] run function astrbot:createtable/block/slot/set_slot_to_occupied
