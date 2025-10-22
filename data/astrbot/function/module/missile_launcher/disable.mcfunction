kill @e[type=text_display,tag=locksym]
tag @s remove astrbot_missile_launcher
execute unless entity @e[tag=astrbot_missile_launcher] run schedule clear astrbot:module/missile_launcher/tick