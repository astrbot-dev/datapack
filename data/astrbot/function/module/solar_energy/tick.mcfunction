execute as @e[tag=astrbot.modult_solar_energy] at @s on owner \
    if entity @s[distance=..8] \
    if score @s astrbot.player_power < @s astrbot.max_player_power \
    if predicate {condition:"location_check",predicate:{can_see_sky:true,light:{light:{min:13,max:15}}}} \
    run scoreboard players add @s astrbot.player_power 3
execute as @e[tag=astrbot.modult_solar_energy] at @s on owner \
    if entity @s[distance=..8] \
    if score @s astrbot.player_power < @s astrbot.max_player_power \
    if predicate {condition:"location_check",predicate:{can_see_sky:true,light:{light:{min:6,max:12}}}} \
    run scoreboard players add @s astrbot.player_power 1
execute on owner if score @s astrbot.player_power > @s astrbot.max_player_power run scoreboard players operation @s astrbot.player_power = @s astrbot.max_player_power

schedule function astrbot:module/solar_energy/tick 5s