scoreboard players operation @s astrbot.createtable_id = curr_createtable astrbot.temp

data merge entity @s {height: 0.3, width: 0.3, response: true, Tags: ["astrbot.createtable.slot", "astrbot.createtable.slot.empty"]}
scoreboard players operation @s astrbot.slot = temp astrbot.slot 
scoreboard players add temp astrbot.slot 1
summon item_display ~ ~ ~ {view_range: 0, Tags: ["astrbot.just.model"]}
ride @n[tag=astrbot.just.model, distance=0..1, type=item_display] mount @s
execute on passengers run tag @s remove astrbot.just.model
