$execute unless entity @e[tag=laserlock,dx=0.1,dy=0.1,dz=0.1] run particle minecraft:trail{color:16711680, target:[$(dx),$(dy),$(dz)],duration:2} ^ ^ ^0.0 0 0 0 0 1 force
#particle enchanted_hit ~ ~ ~ 0 0 0 0 2 force
execute unless entity @e[tag=laserlock,dx=0.1,dy=0.1,dz=0.1] positioned ^ ^ ^0.05 run function astrbot:module/active_defence_system/show with storage astrbot:module active_defence_system
data merge entity @e[tag=laserlock,limit=1] {Motion:[0,0,0]}
execute if entity @e[tag=laserlock,dx=0.1,dy=0.1,dz=0.1] run scoreboard players set @e[tag=laserlock,tag=!apshit] astr.hit 3
execute if entity @e[tag=laserlock,dx=0.1,dy=0.1,dz=0.1] run tag @e[tag=laserlock] add apshit
#execute if entity @e[tag=laserlock,dx=0.1,dy=0.1,dz=0.1] at @e[tag=apshit] run particle crit ~ ~ ~ 0.05 0.05 0.05 0.1 1 force
execute if entity @e[tag=laserlock,dx=0.1,dy=0.1,dz=0.1] at @e[tag=apshit] run particle electric_spark ~ ~ ~ 0.05 0.05 0.05 1 20 force
execute if entity @e[tag=laserlock,dx=0.1,dy=0.1,dz=0.1,type=arrow] at @e[tag=apshit] run particle item{item:{id:"minecraft:arrow"}} ^ ^ ^ 0 0 0 0.1 10