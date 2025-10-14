#鞍槽位
execute unless items entity @s saddle * run item replace entity @s saddle with recovery_compass[minecraft:equippable={slot:"saddle"}]
item modify entity @s[gamemode=!creative,gamemode=!spectator] saddle {enchantments:{"astrbot:module/fall_prevention":1},function:"minecraft:set_enchantments"}