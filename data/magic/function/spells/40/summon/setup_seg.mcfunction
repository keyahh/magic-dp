scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players operation @s magic.spellID = #spellID magic.spellID

data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1.5f,1.5f,1.5f]},teleport_duration:2,item_display:"head",Tags:["magic","earthWorm","wormSeg","conjuration","magicSpell"],brightness:{sky:15,block:15},item:{id:"minecraft:dirt",count:1,components:{"minecraft:item_model":"magic:worm_body"}}}

#summon snowball ~ ~ ~ {NoGravity:1b,Tags:["magic","ptrNext","newPtr"],Item:{id:"minecraft:snowball",count:1,components:{"minecraft:item_model":"minecraft:air"}}}
summon snowball ~ ~ ~ {NoGravity:1b,Tags:["magic","ptrPrev","newPtr"],Item:{id:"minecraft:snowball",count:1,components:{"minecraft:item_model":"minecraft:air"}}}

ride @e[distance=..2,type=snowball,tag=ptrPrev,tag=newPtr,limit=1,sort=arbitrary] mount @s
#execute on passengers run ride @e[distance=..2,type=snowball,tag=ptrNext,tag=newPtr,limit=1,sort=arbitrary] mount @s
execute on passengers run tag @s remove newPtr
#execute on passengers on passengers run tag @s remove newPtr

#execute on passengers on passengers run data modify entity @s Owner set from storage magic:chain nextUUID
execute on passengers run data modify entity @s Owner set from storage magic:chain nextUUID
data modify storage magic:chain nextUUID set from entity @s UUID
#execute on passengers on passengers on origin on passengers run data modify entity @s Owner set from storage magic:chain nextUUID

summon cow ~ ~ ~ {Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Health:100f,Age:-2147483648,Tags:["wormHitbox","newWormHitbox"],active_effects:[{id:"minecraft:resistance",amplifier:3,duration:-1,show_particles:0b},{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:100},{id:"minecraft:scale",base:1.5}],equipment:{mainhand:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:enchantments":{"magic:suffocation_immunity":1},"minecraft:item_model":"air"}}},drop_chances:{mainhand:0.000}}
ride @e[distance=..2,type=cow,tag=newWormHitbox,limit=1,sort=arbitrary] mount @s
execute on passengers run scoreboard players operation @s magic.id = #magicSearch magic.id
execute on passengers run tag @s[type=cow] remove newWormHitbox