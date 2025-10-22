execute if data entity @s item.components."minecraft:custom_data".astrbot.modules[{module:{module_id:10b}, enabled: 0b}] run return 0

tag @s add astrbot.bot.temp
execute at @s on passengers on target if items entity @s weapon.mainhand * run return run function astrbot:module/backpack/insert

execute at @s on passengers on target unless items entity @s weapon.mainhand * run function astrbot:module/backpack/take