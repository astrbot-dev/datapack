# as: display; at: display
execute on vehicle run return 0

# 指针
summon minecraft:item ~ ~ ~ {Tags:["astrbot_clear_lost"],\
    PickupDelay:100s,Item:{id:"minecraft:stone",count:1}}
data modify entity @n[tag=astrbot_clear_lost] Thrower set from entity @s data.Owner

# disable
ride @s mount @n[tag=astrbot_clear_lost]
data modify storage astrbot:terminal temp set from entity @s item.components."minecraft:custom_data".astrbot.modules
execute store result score #temp astrbot.var run data get storage astrbot:terminal temp
execute if score #temp astrbot.var matches 1.. run function astrbot:data/bot/clear/disable

# 部署数量 -1
execute store result score #bot_type astrbot.var run data get entity @s item.components."minecraft:custom_data".astrbot.type
execute unless score #bot_type astrbot.var matches 2 as @n[tag=astrbot_clear_lost] on origin run scoreboard players remove @s astrbot.bot_count 1
kill @n[tag=astrbot_clear_lost]
function astrbot:data/bot/clear/cascading