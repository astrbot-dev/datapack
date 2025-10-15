execute as @s[tag=!pdg] run scoreboard players set @s astr.flying_time 2

execute at @s[tag=hitb] run particle minecraft:trial_spawner_detection ^ ^-0.1 ^-0.2 0.01 0.01 0.01 0.04 20 force
execute at @s[scores={astr.flying_time=1..2}] run tag @e[tag=!bullet,tag=!M134,dx=0,dy=0,dz=0] add hit1
execute at @s[scores={astr.flying_time=1..2}] positioned ~-0.98 ~-0.98 ~-0.98 run damage @e[tag=hit1,dx=0,dy=0,dz=0,limit=1] 5 magic
execute at @s[tag=hit] run particle dust_color_transition{from_color: [1.0, 0.0, 0.0], scale: 1.0, to_color: [1.0, 0.0, 0.0]} ^ ^ ^ 0 0 0 1 10

tag @e[tag=hit1] remove hit1
#execute at @s[tag=hitb] run particle minecraft:dripping_lava ^ ^-0.1 ^-0.1 0.01 0.01 0.01 1 10 force
tag @s add pdg