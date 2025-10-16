scoreboard players operation @s astrbot.uid = @e[tag=uid] astrbot.uid
execute as @s at @s run tp @s @e[tag=launch,limit=1,sort=nearest]
execute as @s at @s run tp @s ^ ^ ^1
data merge entity @s {Invisible:true}
scoreboard players set @s astrbot.missile_launcher_time 100

tag @s remove agmpre
tag @s add agm