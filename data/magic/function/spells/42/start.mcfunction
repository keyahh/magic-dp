scoreboard players operation #magicSearch magic.id = @s magic.id

execute if entity @s[tag=magic.hasRaptor] as @e[type=cow,tag=raptorBase,predicate=magic:match_id] at @s run return run function magic:spells/42/despawn_raptor

function magic:spells/42/summon_raptor
tag @s add magic.hasRaptor
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1.5 2