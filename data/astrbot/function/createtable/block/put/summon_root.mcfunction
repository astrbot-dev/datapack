data merge entity @s {Tags:["astrbot.createtable", "astrbot.just"]}
execute facing entity @p[tag=astrbot_putting] feet rotated ~ 0.0 run rotate @s ~ ~
execute if entity @s[y_rotation=-45..45] run rotate @s 0 ~
execute if entity @s[y_rotation=45..135] run rotate @s 90 ~
execute if entity @s[y_rotation=135..180] run rotate @s -180 ~
execute if entity @s[y_rotation=-180..-135] run rotate @s -180 ~
execute if entity @s[y_rotation=-135..-45] run rotate @s -90 ~

summon interaction ~ ~-0.1875 ~ {height: 0.7075, width: 1.05, Tags: ["astrbot.createtable.interaction", "astrbot.just"], response:true}

execute at @s run function astrbot:createtable/block/put/model

execute rotated as @s as @e[tag=astrbot.just, distance=0..0.9] run rotate @s ~ 0

# set id
scoreboard players add static_id astrbot.createtable_id 1
execute as @e[tag=astrbot.just,distance=0..0.9] run function astrbot:createtable/block/put/set_id