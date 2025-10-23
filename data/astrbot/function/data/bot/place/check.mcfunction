# 放置条件
scoreboard players set @s astrbot.using_hold 0

# 机器人物品数据
data modify storage astrbot:temp summon set from entity @s SelectedItem

# 类型识别(0-ground, 1-air, 2-heavy)
## 重型不占用部署上限
execute if data storage astrbot:temp summon.components."minecraft:custom_data".astrbot{type:2} run return run function astrbot:data/bot/summon/main
## 满部署上限
execute if score @s astrbot.bot_count matches 3.. run return run function astrbot:data/bot/place/fail
## 未满部署上限
function astrbot:data/bot/summon/main