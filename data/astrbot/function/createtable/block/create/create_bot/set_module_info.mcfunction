data modify storage astrbot:temp module set value {}
execute store result storage astrbot:temp module.slot byte 0 run scoreboard players get @s astrbot.slot
execute on passengers run data modify storage astrbot:temp module.module set from entity @s item.components."minecraft:custom_data".astrbot
data modify storage astrbot:temp createtable.modules append from storage astrbot:temp module