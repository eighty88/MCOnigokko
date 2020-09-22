bossbar set onigokko players @a

execute unless entity @a[gamemode=adventure,tag=oni] run function onigokko:end_winner_villager
execute unless entity @a[gamemode=adventure,tag=hito] run function onigokko:end_winner_oni
execute as @a[tag=oni,limit=1] run tp @e[tag=Controller] ~ ~3 ~
execute as @e[tag=Controller] unless entity @a[tag=oni] run scoreboard players add @e[tag=Controller] deaths 1
execute as @e[tag=Controller,scores={deaths=1..}] if entity @a[tag=oni] run scoreboard players set @e[tag=Controller] deaths 0
execute if entity @a[scores={deaths=1..}] run function onigokko:ondeath
execute as @a[tag=hito,nbt={Inventory:[{"id":"minecraft:beacon"}]}] run function onigokko:mine
execute if entity @a[scores={teiden=1..}] run function onigokko:teiden
execute if entity @a[scores={gankou=1..}] run function onigokko:veyes

kill @e[type=arrow,nbt={OnGround:true},tag=!t]

function onigokko:timer
function onigokko:barrier
function onigokko:barrier2
function onigokko:bow
function onigokko:honki
function onigokko:smoke

scoreboard players enable @a Honki1
scoreboard players enable @a Honki2
scoreboard players enable @a Honki3
scoreboard players enable @a Honki4