#吸附后将非玩家乘客踢下去


tag @s add astrbot_ride_temp
execute on vehicle on passengers unless entity @s[type=player] unless entity @s[tag=astrbot_ride_temp] run ride @s dismount
tag @s remove astrbot_ride_temp