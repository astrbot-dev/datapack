#寻找主人并跟随

execute on owner run tag @s add astrbot_owner_temp

execute if entity @n[distance=6..,tag=astrbot_owner_temp] run scoreboard players set @s botai.vel 2800
execute positioned as @n[tag=astrbot_owner_temp] run function botai:simple_follow/step
