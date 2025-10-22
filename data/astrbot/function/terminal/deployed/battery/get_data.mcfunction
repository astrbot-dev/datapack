$data modify storage astrbot:terminal main.uid set from storage astrbot:terminal player."$(UUID)".current_operation
#对应uid的无人机充电
function astrbot:terminal/deployed/battery/main with storage astrbot:terminal main