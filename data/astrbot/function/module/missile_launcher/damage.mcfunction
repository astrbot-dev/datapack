execute at @e[tag=exp] run particle minecraft:explosion ~ ~1 ~ 0.2 0.2 0.2 0.001 3 force
#execute at @e[tag=exp] run summon firework_rocket ~ ~1 ~ {Silent:true,LifeTime:0,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"burst",has_twinkle:0,has_trail:0,colors:[I;4408131],fade_colors:[I;1973019]},{shape:"burst",has_twinkle:0,has_trail:0,colors:[I;4408131],fade_colors:[I;11250603]},{shape:"burst",has_twinkle:0,has_trail:0,colors:[I;15790320],fade_colors:[I;11250603]}]}}}}
execute at @e[tag=exp] run summon firework_rocket ~ ~ ~ {Silent:true,LifeTime:0,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"burst",has_twinkle:0,has_trail:1,colors:[I;4408131],fade_colors:[I;1973019]},{shape:"burst",has_twinkle:0,has_trail:1,colors:[I;4408131],fade_colors:[I;11250603]},{shape:"burst",has_twinkle:0,has_trail:0,colors:[I;11250603],fade_colors:[I;15790320]}]}}}}
#execute at @e[tag=exp] run particle minecraft:trial_spawner_detection ~ ~ ~ 0 0 0 0.05 1000 force
execute at @e[tag=exp] run playsound entity.generic.explode hostile @a ~ ~ ~
execute at @e[tag=exp] positioned ~ ~1 ~ as @e[distance=..5,type=!experience_orb,type=!item] run damage @s 20 minecraft:indirect_magic
kill @e[tag=exp]
