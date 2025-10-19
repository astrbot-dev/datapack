execute if entity @s[distance=..10] unless entity @n[type=item_display,tag=astrbot_display,distance=..0.1] positioned ^ ^ ^0.2 run function astrbot:terminal/deployed/raycasting
execute unless data storage astrbot:terminal {raycasting:true} as @n[type=item_display,tag=astrbot_display] run function astrbot:terminal/deployed/bot_type/main
data modify storage astrbot:terminal raycasting set value true