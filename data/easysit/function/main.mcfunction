scoreboard players enable @a help.easysit

execute as @a if score @s help.easysit matches 1 run function easysit:trigger_help


execute if score &sit_mode config.easysit matches 0 run function easysit:right_click

execute if score &sit_mode config.easysit matches 1 run function easysit:double_sneak



scoreboard players enable @a sit

execute as @a[scores={sit=1}] run function easysit:sit_command



