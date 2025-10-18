scoreboard players operation @s astrbot.uid = @e[tag=uid] astrbot.uid
execute as @s at @s run tp @s @e[tag=launch,limit=1,sort=nearest]
execute as @s at @s run tp @s ^ ^ ^1
data merge entity @s {item:{id:end_rod},item_display:fixed,transformation:{right_rotation:[1f,-1f,-1f,1f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[1.75f,1.75f,2f]},teleport_duration:1d}
scoreboard players set @s astrbot.missile_launcher_time 100

tag @s remove agmpre
tag @s add agm