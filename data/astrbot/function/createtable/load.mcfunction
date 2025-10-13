scoreboard objectives add astrbot.place_createtable used:item_frame
scoreboard objectives add astrbot.createtable_id dummy
    execute unless score static_id astrbot.createtable_id matches -2147483648..2147483647 run scoreboard players set static_id astrbot.createtable_id 0
scoreboard objectives add astrbot.temp dummy
scoreboard objectives add astrbot.slot dummy