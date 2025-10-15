data merge entity @s {height:0.0f,interaction:{player:[I;0,0,0,0],timestamp:0l},width:0.0f}
data modify entity @s interaction.player set from entity @p UUID
# data modify entity @s interaction.player set from entity @n[type=item_display,tag=waiting_for_getting_uuid] data.owner
execute on target run function astrbot:module/fall_prevention/terminate
kill @s