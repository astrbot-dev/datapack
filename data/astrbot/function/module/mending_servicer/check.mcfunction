execute on owner unless score @s astrbot.player_power matches 1.. run return fail
execute on owner unless entity @s[distance=..8] run return fail
execute unless predicate { condition:"random_chance" ,chance:0.005} run return 0
execute on owner unless items entity @s armor.* *[damage~{damage:{min:1}}] unless items entity @s weapon.* *[damage~{damage:{min:1}}] run return 0
execute on owner run function astrbot:module/mending_servicer/mending
##
execute at @s run function astrbot:module/mending_servicer/particle.macro with storage astrbot:temp