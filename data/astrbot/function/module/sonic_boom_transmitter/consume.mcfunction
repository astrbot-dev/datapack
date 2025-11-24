execute if entity @s[tag=!astrbot_heavy] on owner if score @s astrbot.player_power matches ..2 run return fail
execute if entity @s[tag=!astrbot_heavy] on owner run scoreboard players remove @s astrbot.player_power 2
execute if entity @s[tag=astrbot_heavy] if score @s astrbot.player_power matches ..2 run return fail
execute if entity @s[tag=astrbot_heavy] run scoreboard players remove @s astrbot.player_power 2
return 1