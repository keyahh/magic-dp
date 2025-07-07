#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run function magic:spells/4/reposition

#block collision
execute unless block ~ ~ ~ #magic:passable run function magic:spells/4/hit_block

#entity collision
scoreboard players operation #magicSearch magic.id = @s magic.id

tag @s add thisSword
tag @n[type=#magic:magic_user,predicate=magic:match_id] add thisPlayer
execute positioned ~-0.3 ~-0.3 ~-0.3 as @e[distance=..5,type=#magic:targets,predicate=!magic:match_id,dx=0] positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dx=0] unless score @s magic.iframe matches 1.. run function magic:spells/4/hit_mob
tag @n[type=#magic:magic_user,predicate=magic:match_id] remove thisPlayer
tag @s remove thisSword

#recurse
execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^0.25 run function magic:spells/4/slowcast