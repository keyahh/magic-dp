particle dust{color:[1.000,0.349,0.349],scale:1.4} ~ ~ ~ 0 0 0 0 1 force

#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run function magic:spells/2/reposition

#block collision
execute unless block ~ ~ ~ #magic:passable run function magic:spells/2/detonate

#entity collision
tag @s add thisSpell
scoreboard players operation #magicSearch magic.id = @s magic.id
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[distance=..5,type=#magic:targets,predicate=!magic:match_id,dx=0,dy=0,dz=0] as @n[distance=..5,type=marker,tag=thisSpell] at @s run function magic:spells/2/detonate
tag @s remove thisSpell

#recurse
execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^0.25 run function magic:spells/2/slowcast