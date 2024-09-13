advancement revoke @s only easysit:interaction

execute as @s at @s run summon minecraft:block_display ~ ~ ~ {Tags:[easysit]}

ride @s mount @e[type=block_display,tag=easysit,limit=1,sort=nearest]

tag @s add sitting

