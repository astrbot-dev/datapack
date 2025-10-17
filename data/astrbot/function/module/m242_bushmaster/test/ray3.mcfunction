execute store result score @s astrbot.collision run function #bs.hitbox:is_in_block_collision

execute unless entity @e[tag=testing,dx=0,dy=0,dz=0] unless score @s astrbot.collision matches 1 positioned ^ ^ ^0.4 run function astrbot:module/m242_bushmaster/test/ray3