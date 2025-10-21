execute on target unless entity @s[tag=astrbot_terminal_requester] run return fail
execute on vehicle run function astrbot:terminal/deployed/bot_type/main
data remove entity @s interaction