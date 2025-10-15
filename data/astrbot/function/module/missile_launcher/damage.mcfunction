execute at @e[tag=exp] run particle minecraft:explosion ~ ~1 ~ 1 1 1 0.001 20 force
execute at @e[tag=exp] run particle minecraft:trial_spawner_detection ~ ~ ~ 0 0 0 0.05 1000 force
execute at @e[tag=exp] run playsound entity.generic.explode hostile @a ~ ~ ~
execute at @e[tag=exp] positioned ~ ~1 ~ as @e[distance=..5,type=!experience_orb,type=!item] run damage @s 20 minecraft:indirect_magic
kill @e[tag=exp]