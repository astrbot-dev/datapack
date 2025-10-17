advancement revoke @s only astrbot:createtable/put_bot

data modify storage astrbot:temp player set from entity @s UUID
tag @s add astrbot.putting_bot

execute as @e[distance=..7, tag=astrbot.createtable.interaction] at @s if function astrbot:createtable/block/put_bot/check_use run function astrbot:createtable/block/put_bot/use

tag @s remove astrbot.putting_bot