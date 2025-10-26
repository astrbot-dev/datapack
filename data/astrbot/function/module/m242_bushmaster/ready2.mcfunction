
$data modify entity @s Rotation[0] set value $(rt0)
$data modify entity @s Rotation[1] set value $(rt1)

$data modify entity @e[tag=APDS_1,limit=1,sort=nearest] Rotation[0] set value $(rt2)
$data modify entity @e[tag=APDS_1,limit=1,sort=nearest] Rotation[1] set value $(rt3)

$data modify entity @s Motion[0] set value $(dx)
$data modify entity @s Motion[1] set value $(dy)
$data modify entity @s Motion[2] set value $(dz)

tag @s remove ready
