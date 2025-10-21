advancement revoke @s only astrbot:createtable/destroy
data modify storage astrbot:temp player set from entity @s UUID
tag @s add astrbot.destroying
execute store success score is_creative_destroying astrbot.temp if predicate {condition:entity_properties, entity: "this", predicate:{type_specific: {type: "player", gamemode: ["creative"]}}}

execute as @e[distance=..7, tag=astrbot.createtable.interaction] at @s unless function astrbot:createtable/block/destroy/check_use run function astrbot:createtable/block/destroy/use

tag @s remove astrbot.destroying