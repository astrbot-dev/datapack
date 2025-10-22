execute if predicate { condition:"random_chance" ,chance:0.5} run return 0
execute on owner unless items entity @s armor.* *[damage~{damage:{min:1}}] unless items entity @s weapon.* *[damage~{damage:{min:1}}] unless score @s astrbot.player_power matches 1.. run return 0
execute on owner run function astrbot:module/mending_servicer/mending
##
execute at @s run function astrbot:module/mending_servicer/particle.macro with storage astrbot:temp