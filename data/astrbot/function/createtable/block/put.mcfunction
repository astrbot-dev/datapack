scoreboard players set @s astrbot.place_createtable 0
tag @s add astrbot_putting
execute as @n[tag=astrbot.createtable, type=item_frame] at @s align y positioned ~ ~0.5 ~ facing entity @p[tag=astrbot_putting] feet rotated ~ 0.0 run function astrbot:createtable/block/put/put2
tag @s remove astrbot_putting