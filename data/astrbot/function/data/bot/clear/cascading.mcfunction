#级联清除展示实体和交互实体
# as: display; at: display

#掉落物品
summon item ~ ~ ~ {Tags:["astrbot_drop"],\
    Item:{id:"stone",count:1},PickupDelay:1}
# 更新lore
data modify storage astrbot:temp createtable.item set from entity @s item
data modify storage astrbot:temp createtable.lore set value []
function astrbot:createtable/block/create/create_bot/set_lore
data modify entity @s item.components."minecraft:lore" set from storage astrbot:temp createtable.lore

data modify entity @n[tag=astrbot_drop,type=minecraft:item,distance=..2] Item set from entity @s item
tag @n[tag=astrbot_drop,type=item,distance=..2] remove astrbot_drop

execute on passengers run kill @s
kill @s