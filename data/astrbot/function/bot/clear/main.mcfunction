#主动清除
#as:root,at:root

execute on passengers at @s run function astrbot:bot/clear/cascading
tp ~ -1000 ~
data remove entity @s Owner
kill @s