#自动吸附

execute on vehicle run return fail

tag @s add astrbot_ride_temp
execute as @e[distance=..1,type=#astrbot:rideable] run function astrbot:bot/ride_
tag @s remove astrbot_ride_temp