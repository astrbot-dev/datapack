execute if score @s astrbot.player_power matches 001..020 run function astrbot:data/hud/betterybar/0/20
execute if score @s astrbot.player_power matches 021..040 run function astrbot:data/hud/betterybar/0/40
execute if score @s astrbot.player_power matches 041..060 run function astrbot:data/hud/betterybar/0/60
execute if score @s astrbot.player_power matches 061..080 run function astrbot:data/hud/betterybar/0/80
execute if score @s astrbot.player_power matches 081..100 run function astrbot:data/hud/betterybar/0/100
# execute if score @s astrbot.player_power matches 101..120 run function astrbot:data/hud/betterybar/0/120
# execute if score @s astrbot.player_power matches 121..140 run function astrbot:data/hud/betterybar/0/140
# execute if score @s astrbot.player_power matches 141..160 run function astrbot:data/hud/betterybar/0/160
# execute if score @s astrbot.player_power matches 161..180 run function astrbot:data/hud/betterybar/0/180
# execute if score @s astrbot.player_power matches 181..200 run function astrbot:data/hud/betterybar/0/200
data modify storage custom_hud:io list append from storage custom_hud:io temp[]