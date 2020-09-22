gamemode adventure @a

tag @a[tag=oni] remove oni
tag @a[tag=kyouhan] remove kyouhan
tag @a[tag=hito] remove hito

tag @a[limit=1,sort=random] add oni
tag @a[tag=!oni,limit=1,sort=random] add kyouhan
tag @a[tag=!oni,tag=!kyounan] add hito

scoreboard objectives add timer dummy
scoreboard objectives add timerT dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add teiden minecraft.dropped:minecraft.sunflower

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
scoreboard players set @e[tag=timer] timerT 25200

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

give @a[tag=oni] minecraft:iron_axe{display:{Name:'{"text":"殺人鬼用アイテム","italic":false}'},Unbreakable:1,Enchantments:[{id:"sharpness",lvl:1000},{id:"vanishing_curse",lvl:1}],HideFlags:63}
give @a[tag=oni] minecraft:potion{display:{Name:'{"text":"殺人鬼用透明化","italic":false}'},CustomPotionEffects:[{Id:14,Amplifier:0,Duration:3600}],CustomPotionColor:65412}
give @a[tag=kyouhan] written_book{pages:['["",{"text":"\\n\\n"},{"text":"\\u30d7\\u30ec\\u30a4\\u30e4\\u30fc\\u306b\\u95c7\\u3092\\u4e0e\\u3048\\u308b","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger Honki1"},"hoverEvent":{"action":"show_text","value":{"text":"\\u30af\\u30ea\\u30c3\\u30af\\u3067\\u30d7\\u30ec\\u30a4\\u30e4\\u30fc\\u306b\\u95c7\\u3092\\u4e0e\\u3048\\u308b","color":"aqua"}}},{"text":"\\n\\n","bold":true,"underlined":true,"color":"dark_red"},{"text":"\\u30d7\\u30ec\\u30a4\\u30e4\\u30fc\\u3092\\u920d\\u8db3\\u306b\\u3059\\u308b","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger Honki2"},"hoverEvent":{"action":"show_text","value":{"text":"\\u30af\\u30ea\\u30c3\\u30af\\u3067\\u30d7\\u30ec\\u30a4\\u30e4\\u30fc\\u3092\\u920d\\u8db3\\u306b\\u3059\\u308b","color":"aqua"}}},{"text":"\\n\\n","bold":true,"underlined":true,"color":"dark_red"},{"text":"\\u9b3c\\u3092\\u81ea\\u5206\\u306e\\u5834\\u6240\\u306b\\n\\u30c6\\u30ec\\u30dd\\u30fc\\u30c8\\u3055\\u305b\\u308b","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger Honki3"},"hoverEvent":{"action":"show_text","value":{"text":"\\u30af\\u30ea\\u30c3\\u30af\\u3067\\u9b3c\\u3092\\u81ea\\u5206\\u306e\\u5834\\u6240\\u306b\\u30c6\\u30ec\\u30dd\\u30fc\\u30c8","color":"aqua"}}},{"text":"\\n\\n","color":"reset"},{"text":"\\u30d7\\u30ec\\u30a4\\u30e4\\u30fc\\u306e\\u5f13\\u77e2\\u3092\\u6d88\\u53bb\\u3059\\u308b","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger Honki4"},"hoverEvent":{"action":"show_text","value":{"text":"\\u30af\\u30ea\\u30c3\\u30af\\u3067\\u30d7\\u30ec\\u30a4\\u30e4\\u30fc\\u306e\\u5f13\\u77e2\\u3092\\u6d88\\u53bb\\u3059\\u308b","color":"aqua"}}}]'],title:"共犯者の本気",author:"共犯者"}
give @a[tag=kyouhan] beacon{display:{Name:'{"text":"地雷","italic":false}'}} 10

function onigokko:lottery/tags
