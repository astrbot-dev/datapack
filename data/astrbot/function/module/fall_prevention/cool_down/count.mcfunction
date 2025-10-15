scoreboard players remove @a[tag=fall_prevention_cool_down] astr.fall_prevention_cool_down 1
execute as @a[tag=fall_prevention_cool_down] if score @s astr.fall_prevention_cool_down matches ..0 run tag @s remove fall_prevention_cool_down
schedule function astrbot:module/fall_prevention/cool_down/count 1s