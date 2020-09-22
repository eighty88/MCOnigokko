execute at @e[tag=m1] run tag @e[type=#minecraft:arrows,tag=a,distance=..3] add y
execute at @e[tag=y] if entity @e[tag=m1] run particle minecraft:flash ~ ~ ~ 0 0 0 0 1
execute at @a if entity @e[tag=y] if entity @e[tag=m1] run playsound minecraft:block.anvil.land player @a ~ ~ ~ 2 1
execute if entity @e[tag=y] run kill @e[tag=m1,limit=1]
execute if entity @e[tag=y] run kill @e[tag=y]
execute at @e[tag=m1] run particle minecraft:crit ~ ~0.3 ~ 0.4 0 0.4 0 1

execute at @e[tag=m2] run tag @e[type=#minecraft:arrows,tag=a,distance=..3] add y
execute at @e[tag=y] if entity @e[tag=m2] run particle minecraft:flash ~ ~ ~ 0 0 0 0 1
execute at @a if entity @e[tag=y] if entity @e[tag=m2] run playsound minecraft:block.anvil.land player @a ~ ~ ~ 2 1
execute if entity @e[tag=y] run kill @e[tag=m2,limit=1]
execute if entity @e[tag=y] run kill @e[tag=y]
execute at @e[tag=m2] run particle minecraft:crit ~ ~0.3 ~ 0.4 0 0.4 0 1

execute at @e[tag=m3] run tag @e[type=#minecraft:arrows,tag=a,distance=..3] add y
execute at @e[tag=y] if entity @e[tag=m3] run particle minecraft:flash ~ ~ ~ 0 0 0 0 1
execute at @a if entity @e[tag=y] if entity @e[tag=m3] run playsound minecraft:block.anvil.land player @a ~ ~ ~ 2 1
execute if entity @e[tag=y] run kill @e[tag=m3,limit=1]
execute if entity @e[tag=y] run kill @e[tag=y]
execute at @e[tag=m3] run particle minecraft:crit ~ ~0.3 ~ 0.4 0 0.4 0 1

execute at @e[tag=m4] run tag @e[type=#minecraft:arrows,tag=a,distance=..3] add y
execute at @e[tag=y] if entity @e[tag=m4] run particle minecraft:flash ~ ~ ~ 0 0 0 0 1
execute at @a if entity @e[tag=y] if entity @e[tag=m4] run playsound minecraft:block.anvil.land player @a ~ ~ ~ 2 1
execute if entity @e[tag=y] run kill @e[tag=m4,limit=1]
execute if entity @e[tag=y] run kill @e[tag=y]
execute at @e[tag=m4] run particle minecraft:crit ~ ~0.3 ~ 0.4 0 0.4 0 1

execute at @e[tag=oni] run teleport @e[type=minecraft:armor_stand,tag=m1] ~-0.6 ~0.3 ~-0.6 facing ~ ~ ~
execute at @e[tag=oni] run teleport @e[type=minecraft:armor_stand,tag=m2] ~-0.6 ~0.3 ~0.6 facing ~ ~ ~
execute at @e[tag=oni] run teleport @e[type=minecraft:armor_stand,tag=m3] ~0.6 ~0.3 ~0.6 facing ~ ~ ~
execute at @e[tag=oni] run teleport @e[type=minecraft:armor_stand,tag=m4] ~0.6 ~0.3 ~-0.6 facing ~ ~ ~
