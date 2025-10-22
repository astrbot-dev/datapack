##
function astrbot:module/mending_servicer/particle
# 耗电
execute if predicate { condition:"random_chance" ,chance:0.1} run scoreboard players remove @s astrbot.player_power 1
##
function astrbot:module/mending_servicer/mending.once
function astrbot:module/mending_servicer/mending.once
function astrbot:module/mending_servicer/mending.once
