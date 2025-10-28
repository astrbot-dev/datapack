tp @s ^ ^ ^0.5
data merge entity @s[scores={astrbot.APDStime=19}] {teleport_duration:1}
#execute at @s positioned ^ ^ ^100000000 run particle minecraft:electric_spark ^ ^ ^-100000003.0 ^ ^ ^1 0.0000000999 0 force
execute if score @s astrbot.APDStime matches 0..20 if entity @e[dx=0,dy=0,dz=0] positioned ~-0.9 ~-0.9 ~-0.9 if entity @e[dx=0,dy=0,dz=0] run function astrbot:module/m242_bushmaster/hit
execute if score @s astrbot.APDStime matches 0..20 if function #bs.hitbox:is_in_block_collision run function astrbot:module/m242_bushmaster/hit
execute if score @s astrbot.APDStime matches 0 run function astrbot:module/m242_bushmaster/hit