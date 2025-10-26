execute store result score #boole astrbot.var run data modify storage astrbot:terminal module set string storage astrbot:terminal temp[0].module.name 8
execute if score #boole astrbot.var matches 1 run function astrbot:terminal/deployed/module/disable with storage astrbot:terminal
data remove storage astrbot:terminal temp[0]
scoreboard players remove #temp astrbot.var 1
execute if score #temp astrbot.var matches ..0 run return 0
function astrbot:data/bot/clear/disable
data remove storage astrbot:terminal module