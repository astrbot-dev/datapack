scoreboard players operation curr_createtable astrbot.temp = @s astrbot.createtable_id

# set bot model
execute as @n[tag=astrbot.createtable.bot.model, distance=0..2, type=item_display] \
    if score @s astrbot.createtable_id = curr_createtable astrbot.temp \
    run item replace entity @s contents from entity @p[tag=astrbot.putting_bot, distance=0..7] weapon.mainhand

# disable createtable interaction
data merge entity @s {height: 0, width: 0}
tag @s add astrbot.createtable.interaction.has_bot

# slot
execute store result score type astrbot.temp run data get entity @n[tag=astrbot.createtable.bot.model, distance=0..2, type=item_display] item.components."minecraft:custom_data".astrbot.type
function astrbot:createtable/block/put_bot/summon_slot

# set slot model
execute as @e[distance=0..1, type=interaction, tag=astrbot.just, limit=4, tag=astrbot.createtable.slot] run function astrbot:createtable/block/put_bot/summon_slot/set_model

item replace entity @p[tag=astrbot.putting_bot, distance=0..7] weapon.mainhand with air