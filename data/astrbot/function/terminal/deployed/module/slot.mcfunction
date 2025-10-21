#执行者：无人机展示实体；执行位置：玩家所在位置

#将此槽位的启用禁用写入实体数据
$execute store result entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:$(slot)}].enabled byte 1.0 run scoreboard players get #temp astrbot.var
#正式启用禁用
$data modify storage astrbot:terminal module set string entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:$(slot)}].module.name 8
execute if score #temp astrbot.var matches 1 run function astrbot:terminal/deployed/module/enable with storage astrbot:terminal
execute if score #temp astrbot.var matches 0 run function astrbot:terminal/deployed/module/disable with storage astrbot:terminal