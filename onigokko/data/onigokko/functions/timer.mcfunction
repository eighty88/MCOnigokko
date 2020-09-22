scoreboard players operation @e[tag=timer] timer = @e[tag=timer] timerT
scoreboard players operation @e[tag=timer] timer /= @e[tag=timer] 20
scoreboard players remove @e[tag=timer,scores={timerT=0..}] timerT 1
execute as @e[tag=timer,scores={timerT=25180}] run title @a title ["準備時間"]
execute as @e[tag=timer,scores={timerT=20000}] run give @a minecraft:quartz
execute as @e[tag=timer,scores={timerT=10000}] run give @a minecraft:quartz
execute as @e[tag=timer,scores={timerT=0}] run give @a minecraft:quartz 4
execute as @e[tag=timer,scores={timerT=0}] run title @a title ["人間よ立ち上がれ！！"]
execute as @e[tag=timer,scores={timerT=24000}] run title @a title ["START!"]
execute store result bossbar minecraft:onigokko value run scoreboard players get @e[limit=1,tag=timer] timerT
execute as @e[tag=timer,scores={timerT=24000..}] run bossbar set onigokko name ["",{"text":"\u9b3c\u3054\u3063\u3053 - ","color":"dark_red"},{"text":"\u6e96\u5099\u6642\u9593\u4e2d\uff1a\u6bba\u5bb3\u7981\u6b62\u3067\u3059\uff01","color":"red"}]
execute as @e[tag=timer,scores={timerT=20000..24000}] run scoreboard players set @e[tag=timer,limit=1] timerT 1000
execute as @e[tag=timer,scores={timerT=10000..20000}] run scoreboard players set @e[tag=timer,limit=1] timerT 500
execute as @e[tag=timer,scores={timerT=-1}] run bossbar remove onigokko
execute as @e[tag=timer,scores={timerT=..24000}] run bossbar set onigokko name ["",{"text":"\u9b3c\u3054\u3063\u3053 - ","color":"dark_red"},{"text":"\u6b21\u306e\u30af\u30aa\u30fc\u30c4\u304c\u914d\u5e03\u3055\u308c\u308b\u307e\u3067","color":"red"},{"score":{"name":"@e[tag=timer,limit=1]","objective":"timerT"},"color":"red"},{"text":"\u79d2\u3067\u3059","color":"red"}]
execute as @e[tag=timer,scores={timerT=20000}] run bossbar set minecraft:onigokko color yellow
execute as @e[tag=timer,scores={timerT=10000}] run bossbar set minecraft:onigokko color green
execute as @e[tag=timer,scores={timerT=20001..}] run bossbar set minecraft:onigokko color red