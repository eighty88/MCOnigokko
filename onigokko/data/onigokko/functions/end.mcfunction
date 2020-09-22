scoreboard objectives remove deaths
scoreboard objectives remove timer
scoreboard objectives remove timerT
scoreboard objectives remove teiden
scoreboard objectives remove gankou
scoreboard objectives remove 20

scoreboard objectives remove Honki1
scoreboard objectives remove Honki2
scoreboard objectives remove Honki3
scoreboard objectives remove Honki4

tellraw @a ["",{"text":"=====","strikethrough":true,"color":"green"},{"text":"\u4eca\u56de\u306e\u5f79\u8077","color":"green"},{"text":"=====","strikethrough":true,"color":"green"},{"text":"\n\n"},{"text":"\u9b3c\uff1a ","color":"dark_red"},{"selector":"@a[tag=oni]","color":"dark_red"},{"text":"\n\n"},{"text":"\u5171\u72af\u8005\uff1a ","color":"gray"},{"selector":"@a[tag=kyouhan]","color":"gray"},{"text":"\n\n"},{"text":"\u6751\u4eba\uff1a\n","color":"dark_green"},{"selector":"@a[tag=hito]","color":"dark_green"},{"text":"\n\n"},{"text":"=================","strikethrough":true,"color":"green"}]

tag @a[tag=oni] remove oni
tag @a[tag=kyouhan] remove kyouhan
tag @a[tag=hito] remove hito

effect clear @a

clear @a

kill @e[type=minecraft:item]
kill @e[tag=Controller]
kill @e[tag=m0]

team remove onigokko

bossbar remove onigokko