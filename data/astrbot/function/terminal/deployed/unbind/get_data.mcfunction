$data modify storage astrbot:terminal main.uid set from storage astrbot:terminal player."$(UUID)".current_operation
# 把对应uid的无人机回收了
function astrbot:terminal/deployed/unbind/recycle with storage astrbot:terminal main