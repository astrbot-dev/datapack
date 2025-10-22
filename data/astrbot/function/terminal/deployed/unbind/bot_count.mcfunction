execute store result score #bot_type astrbot.var run data get entity @s item.components."minecraft:custom_data".astrbot.type
execute on vehicle run function astrbot:bot/clear/main
execute if score #bot_type astrbot.var matches 2 run return fail
execute on vehicle on owner run scoreboard players remove @s astrbot.bot_count 1