function astrbot:module/missile_launcher/launch
function astrbot:module/missile_launcher/damage
execute as @e[tag=agm] run function astrbot:module/missile_launcher/target
execute as @e[tag=agm] run function astrbot:module/missile_launcher/target
execute as @e[tag=agm] run function astrbot:module/missile_launcher/target
schedule function astrbot:module/missile_launcher/tick 1t