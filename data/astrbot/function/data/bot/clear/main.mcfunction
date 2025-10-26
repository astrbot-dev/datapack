# 主动清除
# as: root; at: root

# disable
execute on passengers run data modify storage astrbot:terminal temp set from entity @s item.components."minecraft:custom_data".astrbot.modules
execute store result score #temp astrbot.var run data get storage astrbot:terminal temp
execute if score #temp astrbot.var matches 1.. on passengers run function astrbot:data/bot/clear/disable

execute on passengers at @s run function astrbot:data/bot/clear/cascading
tp ~ -1000 ~
data remove entity @s Owner
kill @s