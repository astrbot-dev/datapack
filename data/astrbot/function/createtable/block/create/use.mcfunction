#button cooldown
execute store result score temp astrbot.createtable.cd run data get entity @s interaction.timestamp
scoreboard players operation temp astrbot.createtable.cd -= @s astrbot.createtable.cd
execute if score temp astrbot.createtable.cd matches ..10 run return 0
execute store result score @s astrbot.createtable.cd run data get entity @s interaction.timestamp

#button animation
execute on passengers run function astrbot:createtable/block/create/change_button_model

# if a bot is put on the table
execute as @n[distance=0..2, tag=astrbot.createtable.bot.model] unless data entity @s item run return 0

# get bot item data
scoreboard players operation curr_id astrbot.temp = @s astrbot.createtable_id
execute as @n[distance=0..2, tag=astrbot.createtable.bot.model] if score @s astrbot.createtable_id = curr_id astrbot.temp run function astrbot:createtable/block/create/create_bot

# enable interaction to put new bot
execute as @n[tag=astrbot.createtable.interaction, distance=0..1, type=interaction] if score @s astrbot.createtable_id = curr_id astrbot.temp run function astrbot:createtable/block/create/enable_interaction