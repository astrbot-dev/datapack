

scoreboard players operation @s astr.uid = @e[tag=uid] astr.uid
execute as @s at @s run tp @s @e[tag=launch,limit=1,sort=nearest]
execute as @s at @s run tp @s ^ ^ ^1
data merge entity @s {Invisible:1}
scoreboard players set @s astr.missile_launcher_time 100

tag @s remove agmpre
tag @s add agm

