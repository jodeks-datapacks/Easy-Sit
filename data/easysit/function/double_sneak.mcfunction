scoreboard players add @a[scores={sneak=2..}] sneak_timer 1

execute as @a if score @s sneak_timer > @s sneak if predicate easysit:sneaking store success score @s sneak_timer as @a[x_rotation=90,predicate=easysit:sneaking] run function easysit:sit_anywhere

execute as @a[scores={sneak_timer=6..}] store success score @s sneak_timer run scoreboard players reset @s sneak

execute as @a[tag=sitting] unless data entity @s RootVehicle at @s run function easysit:dismount