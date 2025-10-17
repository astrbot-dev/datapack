data merge entity @s {Tags:["astrbot.createtable", "astrbot.just"]}
tp @s ~ ~ ~ ~ ~
execute if entity @s[x_rotation=-45..45] run tp @s ~ ~ ~ 0 ~
execute if entity @s[x_rotation=45..135] run tp @s ~ ~ ~ 90 ~
execute if entity @s[x_rotation=135..180] run tp @s ~ ~ ~ -180 ~ 
execute if entity @s[x_rotation=-180..-135] run tp @s ~ ~ ~ -180 ~
execute if entity @s[x_rotation=-135..-45] run tp @s ~ ~ ~ 90 ~

summon interaction ~ ~ ~ {height: 0.401, width: 1.001, Tags: ["astrbot.createtable.interaction", "astrbot.just"]}

ride @n[tag=astrbot.createtable.interaction, tag=astrbot.just, distance=0..1] mount @s

execute at @s run function astrbot:createtable/block/put/model

ride @n[tag=astrbot.createtable.bot.model, tag=astrbot.just, distance=0..1] mount @s

# set id
execute as @e[tag=astrbot.just,distance=0..1] run function astrbot:createtable/block/put/set_id