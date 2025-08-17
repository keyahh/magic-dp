particle dust{color:[1.000,0.702,0.098],scale:1} ~ ~ ~ 0 0 0 0 3 force

#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run function magic:spells/11/reposition

#block collision
execute unless block ~ ~ ~ #magic:passable run function magic:spells/11/fizzle

#entity collision
tag @s add thisSpell

execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[type=#magic:conjuration_spell,tag=conjuration,dx=0.5,dy=0.5,dz=0.5,distance=..5] at @s run function magic:spells/11/banish

tag @s remove thisSpell

#recurse
execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^0.25 run function magic:spells/11/slowcast