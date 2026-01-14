scoreboard objectives add easysit.config trigger

scoreboard objectives add easysit.image dummy

scoreboard objectives add sit trigger

scoreboard objectives add looking_down dummy

function easysit:config/image

execute unless score &right_click_sit easysit.config = &right_click_sit easysit.config run function easysit:config/set_default




kill @e[type=interaction,tag=easysit]
kill @e[type=block_display,tag=easysit]

tag @a remove sitting_anywhere
tag @a remove sitting_interaction