#这个记分项获取的是模块
execute store result storage astrbot:terminal temp_compound.module int 1.0 run scoreboard players get @s astrbot.module_terminal
data modify storage astrbot:terminal temp_compound.UUID set from entity @s UUID
function astrbot:terminal/deployed/module/get_data with storage astrbot:terminal temp_compound
scoreboard players set @s astrbot.module_terminal -1
scoreboard players enable @s astrbot.module_terminal