# 吸附后踢出非玩家乘客
tag @s add astrbot_ride_temp
execute on vehicle on passengers unless entity @s[type=player] unless entity @s[tag=astrbot_ride_temp] run ride @s dismount
tag @s remove astrbot_ride_temp