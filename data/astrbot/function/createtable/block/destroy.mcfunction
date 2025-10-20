advancement revoke @s only astrbot:createtable/destory
data modify storage astrbot:temp player set from entity @s UUID
tag @s add astrbot.destroying

execute as @e[distance=..7, tag=astrbot.createtable.interaction] at @s unless function astrbot:createtable/block/destroy/check_use run function astrbot:createtable/block/destroy/use

tag @s remove astrbot.destroying