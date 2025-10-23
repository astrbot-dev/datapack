# 检测长按时间
execute if score @s astrbot.using matches 1 run scoreboard players add @s astrbot.using_hold 1
execute unless score @s astrbot.using matches 1 run scoreboard players set @s astrbot.using_hold 0

# 达标则检测是否符合放置条件
execute if score @s astrbot.using_hold matches 30.. run function astrbot:data/bot/place/check