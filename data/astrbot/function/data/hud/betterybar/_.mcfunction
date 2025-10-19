# 背板
## 基础
execute if score @s astrbot.player_power matches 11.. run function astrbot:data/hud/betterybar/acc/-1/none
## 电量不足
execute if score @s astrbot.player_power matches ..10 run function astrbot:data/hud/betterybar/acc/-1/low_bettery
# 衬底
execute if score @s astrbot.player_power matches 021..040 run function astrbot:data/hud/betterybar/acc/0/0
execute if score @s astrbot.player_power matches 041..060 run function astrbot:data/hud/betterybar/acc/0/1
execute if score @s astrbot.player_power matches 061..080 run function astrbot:data/hud/betterybar/acc/0/2
execute if score @s astrbot.player_power matches 081..100 run function astrbot:data/hud/betterybar/acc/0/3
# execute if score @s astrbot.player_power matches 101..120 run function astrbot:data/hud/betterybar/acc/0/4
# execute if score @s astrbot.player_power matches 121..140 run function astrbot:data/hud/betterybar/acc/0/5
# execute if score @s astrbot.player_power matches 141..160 run function astrbot:data/hud/betterybar/acc/0/6
# execute if score @s astrbot.player_power matches 161..180 run function astrbot:data/hud/betterybar/acc/0/7
# execute if score @s astrbot.player_power matches 181..200 run function astrbot:data/hud/betterybar/acc/0/8
# 主层
function astrbot:data/hud/betterybar/0/_
function astrbot:data/hud/betterybar/1/_
function astrbot:data/hud/betterybar/2/_
function astrbot:data/hud/betterybar/3/_
function astrbot:data/hud/betterybar/4/_
function astrbot:data/hud/betterybar/5/_
function astrbot:data/hud/betterybar/6/_
function astrbot:data/hud/betterybar/7/_
function astrbot:data/hud/betterybar/8/_
function astrbot:data/hud/betterybar/9/_
# 顶层
## 充盈
# execute if score @s Effect.example_full matches 1.. run function astrbot:data/hud/betterybar/acc/1/full
# 补充
## 警告
execute if score @s astrbot.player_power matches ..10 run function astrbot:data/hud/betterybar/acc/1/low_bettery
## 层数
function astrbot:data/hud/betterybar/acc/1/layer