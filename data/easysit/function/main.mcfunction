scoreboard players enable @a easysit.config
execute as @a if score @s easysit.config matches 1 run \
 function easysit:config/dialog_config with storage easysit:root

scoreboard players enable @a sit
execute as @a[scores={sit=1..}] run function easysit:trigger_sit

execute as @a[x_rotation=90] run scoreboard players set @s looking_down 1
execute as @a[x_rotation=..85] run scoreboard players set @s looking_down 0