#> astrbot:bot/shift_use
#> astrbot:createtable/block/slot/insert

#context item_display(bot)

#input storage

#max_size = 4
data modify storage astrbot:temp modules set from entity @s item.components."minecraft:custom_model_data".strings

# tellraw @a {nbt:"input", storage:"astrbot:temp"}
# tellraw @a {nbt:"modules", storage:"astrbot:temp"}

execute store success score is_this astrbot.temp if data storage astrbot:temp modules[0] run data modify storage astrbot:temp modules[0] set from storage astrbot:temp input
execute if score is_this astrbot.temp matches 0 run return 1

execute store success score is_this astrbot.temp if data storage astrbot:temp modules[1] run data modify storage astrbot:temp modules[1] set from storage astrbot:temp input
execute if score is_this astrbot.temp matches 0 run return 1

execute store success score is_this astrbot.temp if data storage astrbot:temp modules[2] run data modify storage astrbot:temp modules[2] set from storage astrbot:temp input
execute if score is_this astrbot.temp matches 0 run return 1

execute store success score is_this astrbot.temp if data storage astrbot:temp modules[3] run data modify storage astrbot:temp modules[3] set from storage astrbot:temp input
execute if score is_this astrbot.temp matches 0 run return 1

return 0