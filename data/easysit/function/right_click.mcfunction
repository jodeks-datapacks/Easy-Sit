execute as @a[x_rotation=90,predicate=easysit:sneaking] at @s unless entity @e[type=interaction,tag=easysit,distance=..1] run summon interaction ~ ~ ~ {Tags:["easysit"],width:0.01F,height:1.8F}

execute as @a[x_rotation=..85,predicate=!easysit:sneaking] at @s if entity @e[type=interaction,tag=easysit,distance=..001] run kill @e[type=interaction,tag=easysit,distance=..001]

execute as @e[type=interaction,tag=easysit] at @s unless entity @p[distance=..0.01] run kill @s

execute as @a[tag=sitting] unless data entity @s RootVehicle at @s run function easysit:dismount