#级联清除展示实体和交互实体
#as:display,at:display

#掉落物品

summon item ~ ~ ~ {Item:{id:"stone",count:1},PickupDelay:1,Tags:["astrbot_drop"]}
data modify entity @n[tag=astrbot_drop,type=item,distance=..2] Item set from entity @s item
tag @n[tag=astrbot_drop,type=item,distance=..2] remove astrbot_drop

execute on passengers run kill @s
kill @s