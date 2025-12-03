execute if data entity @n[tag=astrbot.bot.temp,distance=0..1] item.components."minecraft:custom_data".astrbot.modules[{module:{module_id:10b}}].module.items[15] run return run function astrbot:module/backpack/insert_full

data modify entity @n[tag=astrbot.bot.temp,distance=0..1] item.components."minecraft:custom_data".astrbot.modules[{module:{module_id:10b}}].module.items append from entity @s SelectedItem
item replace entity @s weapon.mainhand with air

playsound item.bundle.insert player @s ~ ~ ~

tag @n[tag=astrbot.bot.temp] remove astrbot.bot.temp