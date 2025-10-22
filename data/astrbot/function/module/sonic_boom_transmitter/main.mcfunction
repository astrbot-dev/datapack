#没有目标
execute unless entity @e[type=#astrbot:sonic_boom_module_influenced,distance=..30,sort=random,limit=1] run return fail
#确定目标
tag @e[type=#astrbot:sonic_boom_module_influenced,distance=..30,sort=random,limit=1] add sonic_boom_transmitter_target
#发射粒子
execute anchored eyes facing entity @n[tag=sonic_boom_transmitter_target] eyes run function astrbot:module/sonic_boom_transmitter/raycasting
#搞点动静
playsound entity.warden.sonic_boom neutral @a ~ ~ ~ 15 1
#打死他
damage @n[tag=sonic_boom_transmitter_target] 12 minecraft:sonic_boom
tag @e[tag=sonic_boom_transmitter_target] remove sonic_boom_transmitter_target
#耗电
execute on passengers unless data entity @s item.components."minecraft:custom_data".astrbot{type:2} on vehicle on owner if score @s astrbot.player_power matches 5.. run return run scoreboard players remove @s astrbot.player_power 5
execute if score @s astrbot.player_power matches 5.. run return run scoreboard players remove @s astrbot.player_power 5