summon item_display ~ ~ ~ {view_range:0f,width:0f,height:0f,teleport_duration:0,Tags:["magic","magicUI","new"],Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,Tags:["magic","magicUI","new"],Passengers:[{id:"minecraft:marker",Tags:["magic","magicUI","new"]}],CustomName:"Spells",CustomNameVisible:0b,DisplayState:{Name:"minecraft:air"}}]}

scoreboard players operation @e[distance=..2,tag=new] magic.id = @s magic.id
data modify storage magic:ui spells set from entity @s equipment.offhand.components."minecraft:custom_data".spells
data modify entity @e[distance=..2,type=chest_minecart,tag=new,limit=1] Items set from storage magic:ui spells
execute as @e[distance=..2,type=chest_minecart,tag=new] run function magic:wand/refresh

tag @e[distance=..2,tag=new] remove new
tag @s add hasWandUI

function magic:wand/clear_mainhand
