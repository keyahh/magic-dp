#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run function magic:spells/44/step

#entity collision
scoreboard players operation #magicSearch magic.id = @s magic.id
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[distance=..12,type=#magic:targets,predicate=!magic:match_id,dx=0,dy=0,dz=0] unless score @s magic.iframe matches 1.. run function magic:spells/44/damage

#recurse
execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^1 run function magic:spells/44/slowcast