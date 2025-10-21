$data modify storage custom_hud:io list append from storage custom_hud:io player."$(UUID)"[]
$execute if score @s CustomHUD.time matches ..0 run data remove storage custom_hud:io player."$(UUID)"