scoreboard players operation @s astrbot.createtable_id = curr_createtable astrbot.createtable_id

data merge entity @s {height: 0.34, width: 0.34, response: true, Tags: ["astrbot.just", "astrbot.createtable.slot", "astrbot.createtable.slot.empty"]}
scoreboard players operation @s astrbot.slot = temp astrbot.slot 
scoreboard players add temp astrbot.slot 1
summon item_display ~ ~ ~ {transformation: {left_rotation: [.0,.0,.0,1.0], right_rotation:[.0,.0,.0,1.0], scale: [0.333,0.333,0.333], translation: [.0,.0,.0]}, view_range: 0, Tags: ["astrbot.just.model", "astrbot.just"]}
ride @n[tag=astrbot.just.model, distance=0..1, type=item_display] mount @s
execute on passengers run tag @s remove astrbot.just.model
