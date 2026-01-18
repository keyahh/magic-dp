particle dust_color_transition{from_color:[1.000,0.000,0.000],to_color:[1.000,0.839,0.839],scale:1} ~ ~ ~ 0 0 0 0 1 force

#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run tp @s ~ ~ ~

#entity collision
tag @s add thisSpell
scoreboard players operation #magicSearch magic.id = @s magic.id
execute as @e[distance=..2,type=#magic:magic_user,predicate=magic:match_id] run function magic:spells/12/hp/heal
tag @s remove thisSpell

#recurse
execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^0.25 run function magic:spells/12/hp/slowcast