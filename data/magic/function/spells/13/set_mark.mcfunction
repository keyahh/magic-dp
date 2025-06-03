scoreboard players reset #magicRange magic.temp

scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players add #spellID magic.spellID 1

summon block_display ~ ~ ~ {brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.05f,200f,0.05f]},block_state:{Name:"minecraft:quartz_block"},Tags:["thinBeam","magic","crown","newMagic","flicker","crownAnchor"]}
summon block_display ~0.05 ~ ~0.05 {brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,-1f,1f],translation:[0f,0f,0f],scale:[-0.1f,-200f,-0.1f]},block_state:{Name:"minecraft:red_concrete"},Tags:["magic","crown","thinRedBeam","newMagic","flicker"]}

scoreboard players operation @e[type=block_display,tag=newMagic,distance=..3] magic.id = #magicSearch magic.id
scoreboard players operation @e[type=block_display,tag=newMagic,distance=..3] magic.spellID = #spellID magic.spellID

tag @e[type=block_display,tag=newMagic,distance=..3] remove newMagic

schedule function magic:spells/13/flicker/loop 1t append

playsound minecraft:entity.warden.sonic_charge master @a ~ ~ ~ 5 2
playsound minecraft:block.conduit.activate master @a ~ ~ ~ 5 2