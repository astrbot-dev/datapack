#处理属性值

execute store result score #temp astrbot.player_attribute_base run data get storage astrbot:temp attribute.amount 100
execute if data storage astrbot:temp {attribute:{type:0b}} run scoreboard players operation @s astrbot.player_attribute_add += #temp astrbot.player_attribute_base
execute if data storage astrbot:temp {attribute:{type:1b}} run scoreboard players operation @s astrbot.player_attribute_mul += #temp astrbot.player_attribute_base
execute if data storage astrbot:temp {attribute:{type:2b}} run scoreboard players operation @s astrbot.player_attribute_mul_total *= #temp astrbot.player_attribute_base
execute if data storage astrbot:temp {attribute:{type:2b}} run scoreboard players operation @s astrbot.player_attribute_mul_total /= #100 astrbot.player_attribute_base