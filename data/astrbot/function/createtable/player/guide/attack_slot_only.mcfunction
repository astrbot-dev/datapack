# hint players how to put the bot on the createtable
execute as @p[tag=astrbot.inserting_model] run function custom_hud:actionbar/0 {"text":{"translate":"tips.astrbot.createtable.attack_slot_only","color":"red"},"time":5}
scoreboard players set displaying_error astrbot.temp 100

return 1