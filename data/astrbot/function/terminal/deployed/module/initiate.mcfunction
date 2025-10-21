#执行者：无人机展示实体；执行位置：玩家所在位置

#如果uid匹配了，就对对应的槽位进行启禁用：
execute store result score #temp2 astrbot.var run data get entity @s item.components."minecraft:custom_data".uid.id
execute if score #temp1 astrbot.var = #temp2 astrbot.var run function astrbot:terminal/deployed/module/initiate_disable