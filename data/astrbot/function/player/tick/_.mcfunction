# HUD
    # BetterybarHUD
    function astrbot:player/tick/betterybar/_

# Bot
    # Bot部署监听
    execute at @s run function astrbot:data/bot/place/holding
    scoreboard players set @s astrbot.using 0

# Module
    # Fall prevention (20Tick)
    execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"periodic_tick":20}} \
    unless items entity @s saddle recovery_compass[custom_data~{saddle_item:true}] \
            run item replace entity @s saddle with recovery_compass[minecraft:custom_data={saddle_item:true},minecraft:enchantments={vanishing_curse:1},minecraft:equippable={slot:"saddle"}]
    #