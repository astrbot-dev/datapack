#判断距离
execute as @e[type=wolf,tag=astrbot_root,tag=fall_prevention,distance=0..] at @s on owner unless entity @s[distance=..50] run return fail
#药水效果
effect give @s slow_falling 1 0 true
#效果触发
playsound block.beacon.activate player @s ~ ~ ~
playsound astrbot:qiangjiu player @s ~ ~ ~
title @s times 0 60 0
title @s title {"text":"\u0001","font":"astrbot:absorption"}
particle dolphin ~ ~-1 ~ 1 1 1 1 1000 force
particle nautilus ~ ~-2 ~ 1 1 1 1 1000 force
particle totem_of_undying ~ ~ ~ 0.2 0.2 0.2 1 50 force
advancement grant @s only astrbot:_display/fall_protect
#冷却开始计时
tag @s add fall_prevention_cool_down
scoreboard players set @s astr.fall_prevention_cool_down 20
function astrbot:module/fall_prevention/cool_down/count
#耗电
execute on passengers unless data entity @s item.components."minecraft:custom_data".astrbot{type:2} on vehicle if score @s astrbot.player_power matches 5.. run scoreboard players remove @s astrbot.player_power 5
execute if score @s astrbot.player_power matches 5.. run return run scoreboard players remove @s astrbot.player_power 5

