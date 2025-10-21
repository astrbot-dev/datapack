execute if score id astrbot.temp matches 0 run return run loot replace entity @s contents loot astrbot:active_defence_system
execute if score id astrbot.temp matches 3 run return run loot replace entity @s contents loot astrbot:fall_prevention
execute if score id astrbot.temp matches 4 run return run loot replace entity @s contents loot astrbot:m242_bushmaster
execute if score id astrbot.temp matches 13 run return run loot replace entity @s contents loot astrbot:mending_servicer
execute if score id astrbot.temp matches 6 run return run loot replace entity @s contents loot astrbot:missile_launcher
execute if score id astrbot.temp matches 7 run return run loot replace entity @s contents loot astrbot:negative_effect_generator
execute if score id astrbot.temp matches 9 run return run loot replace entity @s contents loot astrbot:sonic_boom_transmitter


#debug
tellraw @a[tag=astrbot.debug] [{"text":"[ASTRBOT]Unknown Module ID: ", color:red},{color:red, "score": {name: "id", objective: "astrbot.temp"}}]