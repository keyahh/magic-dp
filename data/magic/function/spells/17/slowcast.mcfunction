particle dust{color:[1.000,0.976,0.902],scale:1} ~ ~ ~ 0 0 0 1 1 force

#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run tp @s ~ ~ ~

#block collision
execute unless block ~ ~ ~ #magic:passable run function magic:spells/17/fizzle

#entity collision
tag @s add thisSpell
scoreboard players operation #magicSearch magic.id = @s magic.id
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=#magic:targets,predicate=!magic:match_id,distance=..5,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] unless score @s magic.iframe matches 1.. at @s run function magic:spells/17/effects
tag @s remove thisSpell

#recurse
execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^0.25 run function magic:spells/17/slowcast