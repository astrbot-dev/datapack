# 生成机器人并初始化
# as: player,at: player

# 生成实体
summon minecraft:wolf ~ ~ ~ {Tags:["astrbot_root","astrbot_root_temp"],\
    Silent:1b,attributes:[{id:"scale",base:0.2}],active_effects:[{id:"invisibility",duration:-1,show_particles:false}],DeathLootTable:"astrbot:empty"}
summon minecraft:item_display ~ ~ ~ {Tags:["astrbot_display","astrbot_display_temp"],\
    item_display:"fixed",teleport_duration:1}
summon minecraft:interaction ~ ~ ~ {Tags:["astrbot_interaction","astrbot_interaction_temp"]}
summon minecraft:interaction ~ ~ ~ {Tags:["astrbot_interaction_2","astrbot_interaction_2_temp"]}
# 骑乘绑定
ride @n[tag=astrbot_display_temp,distance=..5] mount @n[tag=astrbot_root_temp,distance=..5]
ride @n[tag=astrbot_interaction_temp,distance=..5] mount @n[tag=astrbot_display_temp,distance=..5]
ride @n[tag=astrbot_interaction_2_temp,distance=..5] mount @n[tag=astrbot_display_temp,distance=..5]
# 设置标签
data modify entity @n[tag=astrbot_display_temp,distance=..5] item set from storage astrbot:temp summon
data modify entity @n[tag=astrbot_root_temp,distance=..5] Owner set from entity @s UUID
data modify entity @n[tag=astrbot_display_temp,distance=..5] data.Owner set from entity @s UUID

# 类型标签
execute if data storage astrbot:temp summon.components."minecraft:custom_data".astrbot{type:0} run function astrbot:data/bot/summon/0
execute if data storage astrbot:temp summon.components."minecraft:custom_data".astrbot{type:1} run function astrbot:data/bot/summon/1
execute if data storage astrbot:temp summon.components."minecraft:custom_data".astrbot{type:2} run function astrbot:data/bot/summon/2

# 清除tag
tag @e[tag=astrbot_root_temp,distance=..5] remove astrbot_root_temp
tag @e[tag=astrbot_display_temp,distance=..5] remove astrbot_display_temp
tag @e[tag=astrbot_interaction_temp,distance=..5] remove astrbot_interaction_temp
tag @e[tag=astrbot_interaction_2_temp,distance=..5] remove astrbot_interaction_2_temp

# 移除玩家手上的物品
# execute unless entity @s[gamemode=creative] run item replace entity @s weapon.mainhand with air
item replace entity @s weapon.mainhand with minecraft:air

# 音效
playsound minecraft:block.vault.open_shutter player @a

# 初始化模块
# scoreboard players set @s astrbot.module_terminal 111
# function astrbot:trigger/module_terminal