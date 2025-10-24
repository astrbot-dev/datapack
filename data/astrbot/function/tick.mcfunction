# Player(仅更改执行对象, 保留执行位置为000)
execute as @a run function astrbot:player/tick/_
# Bot
function astrbot:data/bot/tick/_


# Scoreboard trigger
    # 模块启禁用
    execute as @a at @s unless score @s astrbot.module_terminal matches -2147483648..-1 run function astrbot:trigger/module_terminal
    # 解绑
    execute as @a at @s if score @s astrbot.unbind matches 1.. run function astrbot:trigger/unbind
    # 取消跟随
    execute as @a at @s if score @s astrbot.follow matches 1.. run function astrbot:trigger/follow
    # 充电
    execute as @a at @s if score @s astrbot.battery matches 1.. run function astrbot:trigger/battery
# Item trigger
    #胡萝卜钓竿
    execute as @a at @s if score @s astrbot.right_click matches 1.. run function astrbot:carrot_on_a_stick
# Clock event
    # Tick
    ## 模块循环
    function astrbot:module/mending_servicer/main
    # Second