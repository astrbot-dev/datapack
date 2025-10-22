execute store result score #bot_type astrbot.var run data get entity @s item.components."minecraft:custom_data".astrbot.type
execute unless score #bot_type astrbot.var matches 2 on vehicle on owner run scoreboard players remove @s astrbot.bot_count 1
execute on vehicle run function astrbot:bot/clear/main