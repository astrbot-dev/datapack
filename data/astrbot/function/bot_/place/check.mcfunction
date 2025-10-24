#检测是否符合放置条件
scoreboard players set @s astrbot.using_hold 0

#获取玩家主手物品
data modify storage astrbot:temp summon set from entity @s SelectedItem


execute if data storage astrbot:temp {summon:{components:{"minecraft:custom_data":{astrbot:{type:2}}}}} run function astrbot:bot/summon/main

execute unless data storage astrbot:temp {summon:{components:{"minecraft:custom_data":{astrbot:{type:2}}}}} unless score @s astrbot.bot_count matches 3.. run function astrbot:bot/summon/main
execute unless data storage astrbot:temp {summon:{components:{"minecraft:custom_data":{astrbot:{type:2}}}}} if score @s astrbot.bot_count matches 3.. run function astrbot:bot/place/fail