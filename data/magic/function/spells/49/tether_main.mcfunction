scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players operation #magicSearch magic.spellID = @s magic.spellID

#magic.temp = rope count

execute unless score @s magic.temp matches 4.. if entity @e[distance=..4,type=#magic:targets,tag=!conjuration,tag=!tethered,predicate=!magic:match_id] summon block_display run function magic:spells/49/setup_rope

execute as @e[distance=..1,type=block_display,tag=tetherRope,predicate=magic:match_spell] at @s run function magic:spells/49/rope_main

execute rotated 0 0 positioned ~ ~0.2 ~ run function magic:spells/49/circle

particle dust{color:[1.000,0.000,0.533],scale:1} ~ ~0.1 ~ 0 0 0 0 1 force
particle dust{color:[0.329,0.000,0.176],scale:1} ~ ~0.1 ~ 0 0 0 0 1 force
particle dust{color:[1.000,0.000,0.533],scale:0.8} ~ ~0.2 ~ 0 0 0 0 1 force
particle dust{color:[0.329,0.000,0.176],scale:0.8} ~ ~0.2 ~ 0 0 0 0 1 force
particle dust{color:[1.000,0.000,0.533],scale:0.7} ~ ~0.3 ~ 0 0 0 0 1 force
particle dust{color:[0.329,0.000,0.176],scale:0.7} ~ ~0.3 ~ 0 0 0 0 1 force
particle dust{color:[1.000,0.000,0.533],scale:0.6} ~ ~0.4 ~ 0 0 0 0 1 force
particle dust{color:[0.329,0.000,0.176],scale:0.6} ~ ~0.4 ~ 0 0 0 0 1 force
particle dust{color:[1.000,0.000,0.533],scale:0.5} ~ ~0.5 ~ 0 0 0 0 1 force
particle dust{color:[0.329,0.000,0.176],scale:0.5} ~ ~0.5 ~ 0 0 0 0 1 force
particle dust{color:[1.000,0.000,0.533],scale:0.5} ~ ~0.6 ~ 0 0 0 0 1 force
particle dust{color:[0.329,0.000,0.176],scale:0.5} ~ ~0.6 ~ 0 0 0 0 1 force
particle dust{color:[1.000,0.000,0.533],scale:0.5} ~ ~0.7 ~ 0 0 0 0 1 force
particle dust{color:[0.329,0.000,0.176],scale:0.5} ~ ~0.7 ~ 0 0 0 0 1 force