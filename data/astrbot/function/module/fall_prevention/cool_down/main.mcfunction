#效果触发
playsound block.beacon.activate player @s ~ ~ ~
title @a times 0 60 0
title @s title {atlas:"minecraft:gui",object:"atlas",sprite:"minecraft:mob_effect/absorption"}
#冷却开始计时
tag @s add fall_prevention_cool_down
scoreboard players set @s astr.fall_prevention_cool_down 60
function astrbot:module/fall_prevention/cool_down/count