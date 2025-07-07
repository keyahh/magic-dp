scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players operation #magicSearch magic.spellID = @s magic.spellID

scoreboard players add @s magic.temp 1
#execute if score @s magic.temp matches ..14 as @e[type=marker,distance=..2,tag=soulOrbParticle,predicate=magic:match_spell] run function magic:spells/29/shrink
execute if score @s magic.temp matches 14 run function magic:spells/29/explode

execute if score @s magic.temp matches 24 run function magic:spells/29/fizzle