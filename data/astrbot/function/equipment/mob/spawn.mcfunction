#生成一只怪

summon stray ~ ~ ~ {Tags:["astrbot_guard_temp","astrbot_guard"],DeathLootTable:"astrbot:chests/guard_death_loot"}

loot replace entity @n[tag=astrbot_guard_temp] armor.head loot astrbot:equipments/helmet
loot replace entity @n[tag=astrbot_guard_temp] armor.chest loot astrbot:equipments/chestplate
loot replace entity @n[tag=astrbot_guard_temp] armor.legs loot astrbot:equipments/leggings
loot replace entity @n[tag=astrbot_guard_temp] armor.feet loot astrbot:equipments/boots

loot replace entity @n[tag=astrbot_guard_temp] weapon.mainhand loot astrbot:equipments/baton

tag @n[tag=astrbot_guard_temp] remove astrbot_guard_temp

