#button animation
execute on passengers run function astrbot:createtable/block/create/change_button_model

#button cooldown
execute store result score curr astrbot.createtable.cd run data get entity @s interaction.timestamp
scoreboard players operation temp astrbot.createtable.cd -= @s astrbot.createtable.cd
execute if score temp astrbot.createtable.cd matches ..10 run return 0
execute store result score @s astrbot.createtable.cd run data get entity @s interaction.timestamp

# get bot item data
scoreboard players operation curr_id astrbot.temp = @s astrbot.createtable_id
execute as @n[distance=0..2, tag=astrbot.createtable.bot.model] if score @s astrbot.createtable_id = temp astrbot.createtable_id run function astrbot:createtable/block/create/create_bot

#if it's a light bot, summon a item
execute store result score bot_type astrbot.temp run data get storage astrbot:temp createtable.bot.astrbot.type
execute if score bot_type astrbot.temp matches 0..1 run return run function astrbot:createtable/block/create/light_bot
#otherwise, it's a heavy bot, so summon the bot entity
#TODO