scoreboard players operation will_distory astrbot.temp = @s astrbot.createtable_id
# return inserted item
execute as @e[tag=astrbot.createtable.slot, distance=0..1, tag=!astrbot.createtable.slot.empty] if score @s astrbot.createtable_id = will_distory astrbot.temp on passengers run function astrbot:createtable/block/distory/item_out
execute as @e[distance=0..1] if score @s astrbot.createtable_id = will_distory astrbot.temp run kill @s

particle item{item: "end_portal_frame"} ~ ~ ~ 0.25 0.25 0.25 0.1 75 normal
