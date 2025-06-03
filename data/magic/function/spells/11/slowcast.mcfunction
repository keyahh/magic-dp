particle dust{color:[1.000,0.702,0.098],scale:1} ~ ~ ~ 0 0 0 0 3 force

#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run function magic:spells/11/reposition

#block collision
execute unless block ~ ~ ~ #magic:passable run function magic:spells/11/fizzle

#entity collision
tag @s add thisSpell

execute positioned ~-0.25 ~-0.25 ~-0.25 as @n[distance=..5,tag=conjuration,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] at @s run function magic:spells/11/banish

tag @s remove thisSpell

#recurse
execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^0.25 run function magic:spells/11/slowcast