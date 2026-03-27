scoreboard players enable @a easy_sit.config
execute as @a if score @s easy_sit.config matches 1 run \
 function easy_sit:config/dialog_config with storage easy_sit:root data

scoreboard players enable @a sit
execute as @a[scores={sit=1..}] run function easy_sit:trigger_sit

execute as @a[x_rotation=90] run scoreboard players set @s easy_sit.looking_down 1
execute as @a[x_rotation=..85] run scoreboard players set @s easy_sit.looking_down 0