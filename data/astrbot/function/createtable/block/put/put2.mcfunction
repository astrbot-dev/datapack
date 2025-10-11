kill @s
summon marker ~ ~ ~ {Tags:["astrbot.createtable", "astrbot.just"]}
setblock ~ ~ ~ barrier

# placeholder model
summon item_display ~ ~ ~ {item: {id: "end_portal_frame", count: 1}, Tags: ["astrbot.just", "astrbot.createtable.model"]}

# interaction for model slot
# there are four interactions at four corners of the model
scoreboard players set temp astrbot.slot 0
execute positioned ~0.333 ~0.2 ~0.333 summon interaction run function astrbot:createtable/block/put/interaction
execute positioned ~-0.333 ~0.2 ~0.333 summon interaction run function astrbot:createtable/block/put/interaction
execute positioned ~-0.333 ~0.2 ~-0.333 summon interaction run function astrbot:createtable/block/put/interaction
execute positioned ~0.333 ~0.2 ~-0.333 summon interaction run function astrbot:createtable/block/put/interaction
execute positioned ~0.333 ~0.2 ~0.333 summon interaction run function astrbot:createtable/block/put/interaction

# init
execute as @e[tag=astrbot.just,distance=0..1] run function astrbot:createtable/block/put/put3

scoreboard players add static_id astrbot.createtable_id 1