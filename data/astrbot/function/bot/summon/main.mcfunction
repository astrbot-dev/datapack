#生成机器人并初始化
#as:player,at:plater

#获取玩家主手物品
data modify storage astrbot:temp summon set from entity @s SelectedItem

#生成实体
summon wolf ~ ~ ~ {Silent:1b,Tags:["astrbot_root","astrbot_root_temp"],attributes:[{id:"scale",base:0.2}],active_effects:[{id:"invisibility",duration:-1,show_particles:false}],DeathLootTable:"astrbot:empty"}
summon item_display ~ ~ ~ {Tags:["astrbot_display","astrbot_display_temp"],item_display:"fixed"}
summon minecraft:interaction ~ ~ ~ {Tags:["astrbot_interaction","astrbot_interaction_temp"]}
summon minecraft:interaction ~ ~ ~ {Tags:["astrbot_interaction_2","astrbot_interaction_2_temp"]}

ride @n[tag=astrbot_display_temp,distance=..5] mount @n[tag=astrbot_root_temp,distance=..5]
ride @n[tag=astrbot_interaction_temp,distance=..5] mount @n[tag=astrbot_display_temp,distance=..5]
ride @n[tag=astrbot_interaction_2_temp,distance=..5] mount @n[tag=astrbot_display_temp,distance=..5]

#设置标签
data modify entity @n[tag=astrbot_display_temp,distance=..5] item set from storage astrbot:temp summon
data modify entity @n[tag=astrbot_root_temp,distance=..5] Owner set from entity @s UUID


#根据分类修改标签
execute if data storage astrbot:temp {summon:{components:{"minecraft:custom_data":{astrbot:{type:0}}}}} run function astrbot:bot/summon/0
execute if data storage astrbot:temp {summon:{components:{"minecraft:custom_data":{astrbot:{type:1}}}}} run function astrbot:bot/summon/1
execute if data storage astrbot:temp {summon:{components:{"minecraft:custom_data":{astrbot:{type:2}}}}} run function astrbot:bot/summon/2

#清除tag
tag @e[tag=astrbot_root_temp,distance=..5] remove astrbot_root_temp
tag @e[tag=astrbot_display_temp,distance=..5] remove astrbot_display_temp
tag @e[tag=astrbot_interaction_temp,distance=..5] remove astrbot_interaction_temp
tag @e[tag=astrbot_interaction_2_temp,distance=..5] remove astrbot_interaction_2_temp