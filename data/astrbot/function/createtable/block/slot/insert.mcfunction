# context: player

# if the slot is disabled
execute \
    as @e[tag=astrbot.temp, distance=0..1, type=interaction] \
    if score @s astrbot.slot_available_status = DISABLE astrbot.slot_available_status \
    if function astrbot:createtable/player/guide/slot_disable \
    run return 0

# if try to install a heavy attack module on a non-heavy bot
execute \
    if items entity @s weapon.mainhand *[custom_data~{astrbot:{module_type:2b}}] \
    as @e[tag=astrbot.createtable.bot.model, distance=0..1, type=item_display] if score @s astrbot.createtable_id = curr_createtable astrbot.temp \
    unless items entity @s contents *[custom_data~{astrbot:{type:2}}] \
    if function astrbot:createtable/player/guide/heavy_bot_only \
    run return 0

# if try to install a attack module on a unavailable slot
execute \
    unless items entity @s weapon.mainhand *[custom_data~{astrbot:{module_type:1b}}] \
    as @n[tag=astrbot.temp, distance=0..1, type=interaction] \
    unless score @s astrbot.slot_available_status = AVAILABLE astrbot.slot_available_status \
    if function astrbot:createtable/player/guide/slot_disable \
    run return 0

# if try to install an attack module on a non-attack slot
execute \
    unless items entity @s weapon.mainhand *[custom_data~{astrbot:{module_type:1b}}] \
    as @n[tag=astrbot.temp, distance=0..1, type=interaction] \
    if entity @s[tag=!astrbot.createtable.slot.attack] \
    if function astrbot:createtable/player/guide/attack_slot_only \
    run return 0

# if the slot is not empty, will take module item out
execute as @n[tag=astrbot.temp, distance=0..1, type=interaction] unless score @s astrbot.slot_status = EMPTY astrbot.slot_status run function astrbot:createtable/block/slot/item_out1

# check unique module
data modify storage astrbot:temp input set string entity @s SelectedItem.components."minecraft:custom_data".astrbot.name 8
execute store result score is_unique astrbot.temp run data get entity @s SelectedItem.components."minecraft:custom_data".astrbot.is_unique
execute \
    if score is_unique astrbot.temp matches 1 \
    as @e[tag=astrbot.createtable.bot.model, distance=0..1, type=item_display] \
    if score @s astrbot.createtable_id = curr_createtable astrbot.temp \
    if function astrbot:bot/has_module \
    if function astrbot:createtable/player/guide/too_many_module \
    run return 0

# take module item out
execute as @n[tag=astrbot.temp, distance=0..1, type=interaction] unless score @s astrbot.slot_status = EMPTY astrbot.slot_status run execute positioned ~ ~0.5 ~ run function astrbot:util/macro/summon_item with storage astrbot:temp arg
data modify entity @n[tag=astrbot.temp, distance=0..1, type=item_display] item set from entity @s SelectedItem
item replace entity @s weapon.mainhand with air

# set bot modules data and update bot model
execute as @n[tag=astrbot.temp, distance=0..1, type=interaction] run function astrbot:createtable/block/slot/set_bot_modules

#the slot is not empty now
execute as @n[tag=astrbot.temp, distance=0..1, type=interaction] run function astrbot:createtable/block/slot/set_slot_to_occupied
