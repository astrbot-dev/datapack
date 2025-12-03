execute \
    unless items entity @s weapon.mainhand *[custom_data~{astrbot:{module_id:9b}}] \
    unless items entity @s weapon.mainhand *[custom_data~{astrbot:{module_id:4b}}] \
    unless items entity @s weapon.mainhand *[custom_data~{astrbot:{module_id:0b}}] \
    run return 0
return 1