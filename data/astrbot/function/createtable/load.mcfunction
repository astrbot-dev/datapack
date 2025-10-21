scoreboard objectives add astrbot.place_createtable used:item_frame
scoreboard objectives add astrbot.createtable_id dummy
    execute unless score static_id astrbot.createtable_id matches -2147483648..2147483647 run scoreboard players set static_id astrbot.createtable_id 0
scoreboard objectives add astrbot.temp dummy
scoreboard objectives add astrbot.slot dummy
scoreboard objectives add astrbot.createtable.cd dummy
scoreboard objectives add astrbot.slot_status dummy
    scoreboard players set EMPTY astrbot.slot_status 0
    scoreboard players set CROWDED astrbot.slot_status 1
    scoreboard players set FULL astrbot.slot_status 2
scoreboard objectives add astrbot.slot_available_status dummy
    scoreboard players set AVAILABLE astrbot.slot_available_status 0
    scoreboard players set EXPLORE_ONLY astrbot.slot_available_status 1
    scoreboard players set DISABLE astrbot.slot_available_status 2