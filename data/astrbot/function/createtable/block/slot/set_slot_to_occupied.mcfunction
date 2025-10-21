#context: interaction
tag @s remove astrbot.createtable.slot.empty

#if this is attack slot and installed an attack module, disable another attack module
execute \
    if entity @s[tag=astrbot.createtable.slot.attack] \
    on passengers if items entity @s contents *[custom_data~{astrbot:{module_type:0}}] \
    as @n[sort=nearest, tag=astrbot.createtable.slot.attack, type=interaction, distance=0..1] if score @s astrbot.createtable_id = curr_createtable astrbot.temp \
    run return run tag @s add astrbot.createtable.slot.disable

#if this is attack slot and installed an explore module, enable another attack module(the module now must be an explore module)
execute \
    if entity @s[tag=astrbot.createtable.slot.attack] \
    as @n[sort=nearest, tag=astrbot.createtable.slot.attack, type=interaction, distance=0..1] if score @s astrbot.createtable_id = curr_createtable astrbot.temp \
    run tag @s remove astrbot.createtable.slot.disable