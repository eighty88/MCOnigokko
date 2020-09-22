execute if entity @a[tag=kyouhan,scores={Honki1=1..}] run effect give @a[tag=hito] minecraft:blindness 30 127 true
execute if entity @a[tag=kyouhan,scores={Honki1=1..}] run clear @a[tag=kyouhan,scores={Honki1=1..}] written_book 1
execute if entity @a[tag=kyouhan,scores={Honki1=1..}] run title @a title "共犯者が暴れているぞ"
execute if entity @a[tag=kyouhan,scores={Honki1=1..}] run playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 1000 1
scoreboard players set @a Honki1 0

execute if entity @a[tag=kyouhan,scores={Honki2=1..}] run effect give @a[tag=hito] minecraft:slowness 30 1 true
execute if entity @a[tag=kyouhan,scores={Honki2=1..}] run clear @a[tag=kyouhan,scores={Honki2=1..}] written_book 1
execute if entity @a[tag=kyouhan,scores={Honki2=1..}] run title @a title "共犯者が暴れているぞ"
execute if entity @a[tag=kyouhan,scores={Honki2=1..}] run playsound minecraft:block.portal.travel player @a ~ ~ ~ 1000 1
scoreboard players set @a Honki2 0

execute if entity @a[tag=kyouhan,scores={Honki3=1..}] run tp @a[tag=oni] @a[limit=1,tag=kyouhan,scores={Honki3=1..}]
execute if entity @a[tag=kyouhan,scores={Honki3=1..}] run clear @a[tag=kyouhan,scores={Honki3=1..}] written_book 1
execute if entity @a[tag=kyouhan,scores={Honki3=1..}] run title @a title "共犯者が暴れているぞ"
execute if entity @a[tag=kyouhan,scores={Honki3=1..}] run playsound minecraft:block.end_portal.spawn player @a ~ ~ ~ 1000 1
scoreboard players set @a Honki3 0

execute if entity @a[tag=kyouhan,scores={Honki4=1..}] run clear @a[tag=nige] minecraft:arrow
execute if entity @a[tag=kyouhan,scores={Honki4=1..}] run clear @a[tag=kyouhan,scores={Honki4=1..}] written_book 1
execute if entity @a[tag=kyouhan,scores={Honki4=1..}] run title @a title "共犯者が暴れているぞ"
execute if entity @a[tag=kyouhan,scores={Honki4=1..}] run playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ 1000 1
scoreboard players set @a Honki4 0