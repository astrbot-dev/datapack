advancement revoke @s only astrbot:createtable/insert_model
data modify storage astrbot:temp player set from entity @s UUID
tag @s add astrbot.inserting_model
execute as @e[distance=..7, tag=astrbot.createtable.slot] at @s if function astrbot:createtable/block/slot/check_use run function astrbot:createtable/block/slot/use
tag @s remove astrbot.inserting_model