# set bot model
execute on passengers if entity @s[tag=astrbot.createtable.bot.model] run item replace entity @s contents from entity @p[tag=astrbot.putting_bot, distance=0..7] weapon.mainhand

# disable interaction
data modify entity @s height set value 0
data modify entity @s width set value 0

execute on vehicle run scoreboard players operation curr_createtable astrbot.temp = @s astrbot.createtable_id

# slot
execute store result score type astrbot.temp run data get entity @s item.components."minecraft:custom_data".astrbot.type
function astrbot:createtable/block/put_bot/summon_slot