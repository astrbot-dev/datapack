$data modify storage astrbot:terminal main.uid set from storage astrbot:terminal player."$(UUID)".current_operation
#对对应uid的无人机跟随/取消跟随
function astrbot:terminal/deployed/follow/main with storage astrbot:terminal main