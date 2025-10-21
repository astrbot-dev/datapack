#单元设置，遍历其中一个项

data modify storage astrbot:temp modules_model.unit set value {}
$data modify storage astrbot:temp modules_model.unit set value $(value)
data modify storage astrbot:temp modules_model.unit.name set from storage astrbot:temp modules_model.unit.module.name
$say $(value)

function astrbot:bot/modules_model/set with storage astrbot:temp modules_model.unit