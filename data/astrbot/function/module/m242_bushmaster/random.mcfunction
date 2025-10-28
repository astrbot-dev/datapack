summon item_display ~ ~3 ~ {Tags:[APDS,ready],item:{id:copper_block},transformation:{right_rotation:[1f,-1f,-1f,1f],translation:[0f,0f,-0.2f],left_rotation:[0f,0f,0f,1f],scale:[0.1f,0.1f,0.4f]},teleport_duration:0}
$rotate @e[tag=ready,limit=1] ~$(randomx) ~$(randomy)
playsound minecraft:entity.firework_rocket.blast_far ambient @a ~ ~ ~
scoreboard players set @e[tag=ready] astrbot.APDStime 20
tag @e remove ready



