#particle flame ~ ~ ~ 0 0 0 0 1 force
scoreboard players remove #magicRange magic.temp 1

scoreboard players operation #magicSearch magic.id = @s magic.id
tag @s add thisPlayer
execute positioned ~-0.6 ~-0.6 ~-0.6 as @e[type=#magic:proj_spell,tag=projSpell,tag=!ignoreDeflect,dx=0.2,dy=0.2,dz=0.2,predicate=!magic:match_id] positioned ~0.6 ~0.6 ~0.6 run function magic:casting/deflect/deflect
tag @s remove thisPlayer

execute if score #magicRange magic.temp matches 1.. positioned ^ ^ ^0.25 if block ~ ~ ~ #magic:passable run function magic:casting/deflect/raycast