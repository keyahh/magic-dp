summon block_display ~0.775 ~ ~0.775 {brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,-1f,1f],translation:[0f,0f,0f],scale:[-1f,-200f,-1f]},block_state:{Name:"minecraft:red_concrete"},Tags:["magic","newMagic","redBeam","crown"]}
summon block_display ~ ~ ~ {brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.55f,200f,0.55f]},block_state:{Name:"minecraft:quartz_block"},Tags:["magic","newMagic","crownAnchor","crown"]}

scoreboard players operation @e[type=block_display,tag=newMagic,distance=..3] magic.id = #magicSearch magic.id
scoreboard players operation @e[type=block_display,tag=newMagic,distance=..3] magic.spellID = #magicSearch magic.spellID

tag @e[type=block_display,tag=newMagic,distance=..3] remove newMagic