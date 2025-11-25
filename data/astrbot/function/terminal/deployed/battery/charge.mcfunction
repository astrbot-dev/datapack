execute on owner run scoreboard players operation #temp astrbot.player_power = @s astrbot.player_power
execute on owner unless score @s astrbot.player_power matches 5.. run return run tellraw @s {color:"red",translate:"tips.no_power"}
scoreboard players remove #temp astrbot.player_power 5
execute on owner run scoreboard players set @s astrbot.player_power 5
scoreboard players operation @s astrbot.player_power += #temp astrbot.player_power

tag @s add astrbot.charge.temp
execute on owner run tellraw @s {translate:"tips.charge_successfully",with:[{score:{name:"#temp",objective:"astrbot.player_power"}},{score:{name:"@n[tag=astrbot.charge.temp]",objective:"astrbot.player_power"}}]}
tag @s remove astrbot.charge.temp