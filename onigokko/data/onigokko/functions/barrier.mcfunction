execute if entity @e[nbt={Inventory:[{id:"minecraft:quartz_block"}]}] run tag @e[nbt={Inventory:[{id:"minecraft:quartz_block"}]},tag=oni] add quartz2
execute at @a if entity @e[tag=quartz2] run playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 2 1
clear @a[tag=quartz2] minecraft:quartz_block 1
execute if entity @e[tag=quartz2,tag=oni] run summon minecraft:armor_stand ~ ~ ~ {Tags:["m1","m0"],Marker:1,Invisible:1,NoBasePlate:1,ShowArms:1,Pose:{LeftArm:[80f,80f,0f],RightArm:[80f,80f,0f]},HandItems:[{},{id:"diamond_sword",Count:1b}]}
execute if entity @e[tag=quartz2,tag=oni] run summon minecraft:armor_stand ~ ~ ~ {Tags:["m2","m0"],Marker:1,Invisible:1,NoBasePlate:1,ShowArms:1,Pose:{LeftArm:[80f,80f,0f],RightArm:[80f,80f,0f]},HandItems:[{},{id:"diamond_sword",Count:1b}]}
execute if entity @e[tag=quartz2,tag=oni] run summon minecraft:armor_stand ~ ~ ~ {Tags:["m3","m0"],Marker:1,Invisible:1,NoBasePlate:1,ShowArms:1,Pose:{LeftArm:[80f,80f,0f],RightArm:[80f,80f,0f]},HandItems:[{},{id:"diamond_sword",Count:1b}]}
execute if entity @e[tag=quartz2,tag=oni] run summon minecraft:armor_stand ~ ~ ~ {Tags:["m4","m0"],Marker:1,Invisible:1,NoBasePlate:1,ShowArms:1,Pose:{LeftArm:[80f,80f,0f],RightArm:[80f,80f,0f]},HandItems:[{},{id:"diamond_sword",Count:1b}]}
give @a[tag=quartz2,tag=oni] minecraft:dragon_head 1
tag @e[tag=quartz2] remove quartz2