# function custom_hud:actionbar/0 {text:文本组件,time:100}
$data modify storage custom_hud:io temp set value [$(text),$(text),$(text)]
data modify storage custom_hud:io temp[0] merge value {"font":"default_neg"}
data modify storage custom_hud:io temp[1] merge value {"font":"default_mod"}
data modify storage custom_hud:io temp[2] merge value {"font":"default_neg"}
$scoreboard players set @s CustomHUD.time $(time)
function custom_hud:actionbar/1 with entity @s