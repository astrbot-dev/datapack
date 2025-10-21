execute as @e[tag=astrbot.createtable.slot.attack, distance=0.1..2, type=interaction] if score @s astrbot.createtable_id = curr_createtable astrbot.temp run tag @s add astrbot.createtable.slot.another
# @s -> changed slot
# @n[tag=astrbot.createtable.slot.another, distance=..2] -> another attack slot 

# slot status is decided by module status of another attack slot

# module status:
# 0 EMPTY: nothing in slot
# 1 CROWDED: slot installed an explore module
# 2 FULL: slot installed an attack module

# slot status:
# 0 AVAILABLE: when another slot is EMPTY
# 1 EXPLORE_ONLY: when another slot is CROWDED
# 2 DISABLE: when another slot is FULL

execute if score @s astrbot.slot_status = EMPTY astrbot.slot_status run scoreboard players operation @n[tag=astrbot.createtable.slot.another, distance=..2] astrbot.slot_available_status = AVAILABLE astrbot.slot_available_status
execute if score @s astrbot.slot_status = CROWDED astrbot.slot_status run scoreboard players operation @n[tag=astrbot.createtable.slot.another, distance=..2] astrbot.slot_available_status = EXPLORE_ONLY astrbot.slot_available_status
execute if score @s astrbot.slot_status = FULL astrbot.slot_status run scoreboard players operation @n[tag=astrbot.createtable.slot.another, distance=..2] astrbot.slot_available_status = DISABLE astrbot.slot_available_status

execute if score @n[tag=astrbot.createtable.slot.another, distance=..2] astrbot.slot_status = EMPTY astrbot.slot_status run scoreboard players operation @s astrbot.slot_available_status = AVAILABLE astrbot.slot_available_status
execute if score @n[tag=astrbot.createtable.slot.another, distance=..2] astrbot.slot_status = CROWDED astrbot.slot_status run scoreboard players operation @s astrbot.slot_available_status = EXPLORE_ONLY astrbot.slot_available_status
execute if score @n[tag=astrbot.createtable.slot.another, distance=..2] astrbot.slot_status = FULL astrbot.slot_status run scoreboard players operation @s astrbot.slot_available_status = DISABLE astrbot.slot_available_status

tag @e[tag=astrbot.createtable.slot.another] remove astrbot.createtable.slot.another