#会被索敌的敌人
tag @e[distance=..32,type=creeper] add allowtrg
tag @e[distance=..32,type=skeleton] add allowtrg
function astrbot:module/m242_bushmaster/test/locka
tag @e remove allowtrg
schedule function astrbot:module/m242_bushmaster/tick 5t