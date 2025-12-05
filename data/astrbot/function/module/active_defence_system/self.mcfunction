execute if entity @s[tag=astrbot_heavy] run return 1

execute on owner run tag @s add astrbot_owner

execute as @e[type=#minecraft:impact_projectiles,tag=!apshit,limit=1,sort=nearest,distance=..20,nbt={inGround:0b}] on origin if entity @s[tag=astrbot_owner] run return fail

return 1