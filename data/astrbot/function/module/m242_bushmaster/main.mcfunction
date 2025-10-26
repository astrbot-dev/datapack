
function astrbot:module/m242_bushmaster/pos
summon arrow ^ ^ ^1 {Silent:1b,Tags:[APDS,ready],NoGravity:1b,PierceLevel:15,Passengers:[{id:item_display,Tags:[APDS_1],item:{id:end_rod},transformation:{right_rotation:[1f,-1f,-1f,1f],translation:[0f,-0.5f,-0.2f],left_rotation:[0f,0f,0f,1f],scale:[0.8f,0.8f,1f]}}]}
execute as @e[tag=ready] run function astrbot:module/m242_bushmaster/ready


