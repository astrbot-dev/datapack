data modify storage astrbot:temp modules set from entity @s item.components."minecraft:custom_data".astrbot.modules

scoreboard players reset slot astrbot.temp
execute unless data storage astrbot:temp modules[0] run return 0
execute if data storage astrbot:temp modules[0].module store result score slot astrbot.temp run data get storage astrbot:temp modules[0].slot
execute if score slot astrbot.temp matches -2147483648..2147483647 run function astrbot:bot/update_modules_model/check_slot
data remove storage astrbot:temp modules[0]

scoreboard players reset slot astrbot.temp
execute unless data storage astrbot:temp modules[0] run return 0
execute if data storage astrbot:temp modules[0].module store result score slot astrbot.temp run data get storage astrbot:temp modules[0].slot
execute if score slot astrbot.temp matches -2147483648..2147483647 run function astrbot:bot/update_modules_model/check_slot
data remove storage astrbot:temp modules[0]

scoreboard players reset slot astrbot.temp
execute unless data storage astrbot:temp modules[0] run return 0
execute if data storage astrbot:temp modules[0].module store result score slot astrbot.temp run data get storage astrbot:temp modules[0].slot
execute if score slot astrbot.temp matches -2147483648..2147483647 run function astrbot:bot/update_modules_model/check_slot
data remove storage astrbot:temp modules[0]

scoreboard players reset slot astrbot.temp
execute unless data storage astrbot:temp modules[0] run return 0
execute if data storage astrbot:temp modules[0].module store result score slot astrbot.temp run data get storage astrbot:temp modules[0].slot
execute if score slot astrbot.temp matches -2147483648..2147483647 run function astrbot:bot/update_modules_model/check_slot