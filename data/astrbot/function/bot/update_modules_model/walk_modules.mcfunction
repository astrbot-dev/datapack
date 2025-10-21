data modify storage astrbot:temp modules set from entity @s item.components."minecraft:custom_data".astrbot.modules

execute unless data storage astrbot:temp modules[0] run return 0
execute store result score slot astrbot.temp run data get storage astrbot:temp modules[0].slot
function astrbot:bot/update_modules_model/check_slot
data remove storage astrbot:temp modules[0]

execute unless data storage astrbot:temp modules[0] run return 0
execute store result score slot astrbot.temp run data get storage astrbot:temp modules[0].slot
function astrbot:bot/update_modules_model/check_slot
data remove storage astrbot:temp modules[0]


execute unless data storage astrbot:temp modules[0] run return 0
execute store result score slot astrbot.temp run data get storage astrbot:temp modules[0].slot
function astrbot:bot/update_modules_model/check_slot
data remove storage astrbot:temp modules[0]


execute unless data storage astrbot:temp modules[0] run return 0
execute store result score slot astrbot.temp run data get storage astrbot:temp modules[0].slot
function astrbot:bot/update_modules_model/check_slot