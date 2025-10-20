
execute if entity @s[distance=..61,tag=lock] if block ~ ~ ~ #air unless entity @e[distance=..3,tag=!lock,type=!#minecraft:impact_projectiles,type=!item,type=!item_display,type=!block_display,type=!text_display,type=!interaction,tag=!astrbot_root] positioned ^ ^ ^0.3 run function astrbot:module/missile_launcher/ray
scoreboard players set @e[distance=..3,tag=!lock,limit=1,sort=nearest,tag=!agm,type=!#minecraft:impact_projectiles,type=!item,type=!item_display,type=!block_display,type=!text_display,type=!interaction,tag=!astrbot_root] astrbot.target 2


