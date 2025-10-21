execute unless entity @s[tag=astrbot_tips] run return 0
function astrbot:data/hud/tips/_
scoreboard players remove @s CustomHUD.time 1
execute if score @s CustomHUD.time matches ..0 run tag @s remove astrbot_guide1