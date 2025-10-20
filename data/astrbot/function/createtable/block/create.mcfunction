advancement revoke @s only astrbot:createtable/confirm

data modify storage astrbot:temp player set from entity @s UUID
tag @s add astrbot.confirming_create

execute as @e[distance=..7, tag=astrbot.createtable.interaction.has_bot] at @s unless function astrbot:createtable/block/create/check_use run function astrbot:createtable/block/create/use

tag @s remove astrbot.confirming_create