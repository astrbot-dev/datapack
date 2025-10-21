#context: interaction

# if a bot is put on the table
execute as @n[distance=0..2, tag=astrbot.createtable.bot.model, type=item_display] unless data entity @s item run return 0

# get bot item data
scoreboard players operation curr_createtable astrbot.temp = @s astrbot.createtable_id
execute as @n[distance=0..2, tag=astrbot.createtable.bot.model, type=item_display] if score @s astrbot.createtable_id = curr_createtable astrbot.temp run function astrbot:createtable/block/create/create_bot

# enable interaction to put new bot
execute as @n[tag=astrbot.createtable.interaction, distance=0..1, type=interaction] if score @s astrbot.createtable_id = curr_createtable astrbot.temp run function astrbot:createtable/block/create/enable_interaction