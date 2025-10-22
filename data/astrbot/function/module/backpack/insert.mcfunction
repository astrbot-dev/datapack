execute if data entity @n[tag=astrbot.bot.temp,distance=0..1] item.components."minecraft:custom_data".astrbot.modules[{module:{module_id:10b}}].module.items[53] run return 0

data modify entity @n[tag=astrbot.bot.temp,distance=0..1] item.components."minecraft:custom_data".astrbot.modules[{module:{module_id:10b}}].module.items append from entity @s SelectedItem
item replace entity @s weapon.mainhand with air

tag @s remove astrbot.bot.temp