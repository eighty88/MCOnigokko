tag @a[tag=oni] remove oni
tag @a[tag=kyouhan] remove kyouhan
tag @a[tag=hito] remove hito

tag @a[limit=1,sort=random] add oni
tag @a[tag=!oni,limit=1,sort=random] add kyouhan
tag @a[tag=!oni,tag=!kyounan] add hito

scoreboard objectives add timer dummy
scoreboard objectives add timerT dummy
scoreboard objectives add deaths deathCount

scoreboard objectives add Honki1 trigger
scoreboard objectives add Honki2 trigger
scoreboard objectives add Honki3 trigger
scoreboard objectives add Honki4 trigger

bossbar add onigokko "鬼ごっこ"
bossbar set onigokko color red
bossbar set onigokko max 24000
bossbar set onigokko style notched_20
bossbar set onigokko visible true

execute as @a[tag=oni,limit=1] run summon armor_stand ~ ~3 ~ {Tags:["Controller","timer"]}

title @a[tag=oni] subtitle {"text":"あなたは鬼です！","color":"aqua"}
title @a[tag=kyouhan] subtitle {"text":"あなたは共犯者です！","color":"aqua"}
title @a[tag=hito] subtitle {"text":"逃げてください！","color":"aqua"}

team add onigokko
team modify onigokko collisionRule never
team modify onigokko deathMessageVisibility never
team modify onigokko nametagVisibility never
team modify onigokko seeFriendlyInvisibles false
team join onigokko @a

gamerule commandBlockOutput false
gamerule sendCommandFeedback false
gamerule keepInventory false
gamerule doImmediateRespawn true

give @a[tag=oni] minecraft:iron_axe{display:{Name:'{"text":"殺人鬼用アイテム","italic":false}'},Unbreakable:1,Enchantments:[{id:"sharpness",lvl:1000},{id:"vanishing_curse",lvl:1}],HideFlags:63}
give @a[tag=oni] minecraft:potion{display:{Name:'{"text":"殺人鬼用透明化","italic":false}'},CustomPotionEffects:[{Id:14,Amplifier:0,Duration:3600}],CustomPotionColor:65412}

function onigokko:lottery/tags
