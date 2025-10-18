function astrbot:module/missile_launcher/lock
function astrbot:module/missile_launcher/damage
execute as @e[tag=agm] run function astrbot:module/missile_launcher/target
execute as @e[tag=agm] run function astrbot:module/missile_launcher/target
execute as @e[tag=agm] run function astrbot:module/missile_launcher/target
scoreboard players remove @e[scores={astrbot.missile_launcher_time=1..}] astrbot.missile_launcher_time 1
kill @e[type=minecraft:text_display,tag=locksym,scores={astrbot.missile_launcher_time=0}]
schedule function astrbot:module/missile_launcher/tick 1t

