scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players operation #magicSearch magic.spellID = @s magic.spellID

# states

execute if entity @s[tag=inMove] run function magic:spells/29/move_main
execute if entity @s[tag=inExplode] run function magic:spells/29/explode_main

# visuals

particle dust{color:[1.000,1.000,1.000],scale:3} ~ ~ ~ 0.3 0.3 0.3 0 5 force
execute as @e[type=marker,distance=..2,tag=soulOrbParticle,predicate=magic:match_spell] at @s run function magic:spells/29/particle_main

# loop

schedule function magic:spells/29/loop 1t append