#重型回收电量
execute unless score @s astrbot.player_power matches 25.. run return fail
scoreboard players operation #temp astrbot.player_power = @s astrbot.player_power
scoreboard players remove #temp astrbot.player_power 25
execute on owner run scoreboard players operation @s astrbot.player_power += #temp astrbot.player_power