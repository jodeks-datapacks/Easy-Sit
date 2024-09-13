execute if entity @s[x_rotation=90,predicate=easysit:sneaking] unless entity @e[type=interaction,tag=easysit,distance=...1] run summon interaction ~ ~ ~ {Tags:["easysit"],width:0.01F,height:1.8F}

execute if entity @s[x_rotation=..85,predicate=!easysit:sneaking] if entity @e[type=interaction,tag=easysit,distance=...001] run kill @e[type=interaction,tag=easysit,distance=...001]


