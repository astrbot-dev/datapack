#效果触发
playsound block.beacon.activate player @s ~ ~ ~
title @a times 0 60 0
title @s title {atlas:"minecraft:gui",object:"atlas",sprite:"minecraft:mob_effect/absorption"}
particle dolphin ~ ~-1 ~ 1 1 1 1 1000 force
particle nautilus ~ ~-2 ~ 1 1 1 1 1000 force
particle totem_of_undying ~ ~ ~ 0.2 0.2 0.2 1 50 force
#冷却开始计时
tag @s add fall_prevention_cool_down
scoreboard players set @s astr.fall_prevention_cool_down 20
function astrbot:module/fall_prevention/cool_down/count
#耗电
execute on passengers unless data entity @s item.components."minecraft:custom_data".astrbot{type:2} on vehicle if score @s astrbot.player_power matches 10.. run scoreboard players remove @s astrbot.player_power 10
execute if score @s astrbot.player_power matches 10.. run return run scoreboard players remove @s astrbot.player_power 10