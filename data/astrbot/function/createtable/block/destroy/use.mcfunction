scoreboard players operation will_distory astrbot.temp = @s astrbot.createtable_id

# return inserted item
execute as @e[tag=astrbot.createtable.slot, distance=0..2, tag=!astrbot.createtable.slot.empty] \
    if score @s astrbot.createtable_id = will_distory astrbot.temp on passengers \
    run function astrbot:createtable/block/destroy/item_out

execute as @e[tag=astrbot.createtable.bot.model, distance=0..2] \
    if score @s astrbot.createtable_id = will_distory astrbot.temp \
    if data entity @s item \
    run function astrbot:createtable/block/destroy/item_out

execute if score is_creative_destroying astrbot.temp matches 0 \
    as @e[tag=astrbot.createtable.model, distance=0..2] \
    if score @s astrbot.createtable_id = will_distory astrbot.temp \
    if data entity @s item \
    run function astrbot:createtable/block/destroy/item_out

execute as @e[distance=0..2] if score @s astrbot.createtable_id = will_distory astrbot.temp run kill @s

particle item{item: {id: "item_frame", components:{"item_model": "astrbot:createtable/platform"}}} ~ ~ ~ 0.3 0.3 0.3 0.075 75 normal

setblock ~ ~ ~ air