#context: interaction

execute on passengers if items entity @s contents *[custom_data~{astrbot:{module_type:0b}}] on vehicle run scoreboard players operation @s astrbot.slot_status = FULL astrbot.slot_status
execute on passengers if items entity @s contents *[custom_data~{astrbot:{module_type:1b}}] on vehicle run scoreboard players operation @s astrbot.slot_status = CROWDED astrbot.slot_status
execute on passengers if items entity @s contents *[custom_data~{astrbot:{module_type:2b}}] on vehicle run scoreboard players operation @s astrbot.slot_status = FULL astrbot.slot_status

execute if entity @s[tag=astrbot.createtable.slot.attack] run function astrbot:createtable/block/slot/update_attack_slot_status