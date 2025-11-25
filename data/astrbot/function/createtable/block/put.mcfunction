scoreboard players set @s astrbot.place_createtable 0
tag @s add astrbot_putting
execute as @n[tag=astrbot.createtable, type=item_frame] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function astrbot:createtable/block/put/put2
tag @s remove astrbot_putting