execute as @e[tag=astrbot.createtable.interaction, distance=0..7, tag=astrbot.createtable.interaction.has_bot] run data merge entity @s {height: 0, width: 0} 

tag @s remove astrbot.is_sneaking