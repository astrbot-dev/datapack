execute unless entity @s[gamemode=!creative,gamemode=!spectator] run return 0

# 状态栏恢复
execute if predicate {condition:"entity_properties",entity:"this",predicate:{periodic_tick:120}} \
    if score @s astrbot.player_power < @s astrbot.max_player_power \
    run scoreboard players operation @s astrbot.player_power += @s astrbot.player_power_regen
execute if score @s astrbot.player_power > @s astrbot.max_player_power run scoreboard players operation @s astrbot.player_power = @s astrbot.max_player_power
# 随机数序列
function astrbot:data/hud/betterybar/random
# 求余
scoreboard players operation #x astrbot.var = @s astrbot.player_power
scoreboard players operation #x astrbot.var %= #20 CustomHUD.const
execute if score #x astrbot.var matches 0 run scoreboard players set #x astrbot.var 20
execute if score @s astrbot.player_power matches 0 run scoreboard players set #x astrbot.var -1
# 显示
function astrbot:data/hud/betterybar/_