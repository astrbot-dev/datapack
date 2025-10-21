execute as @a run function astrbot:createtable/player_tick
execute if score displaying_error astrbot.temp matches 0.. run scoreboard players remove displaying_error astrbot.temp 1