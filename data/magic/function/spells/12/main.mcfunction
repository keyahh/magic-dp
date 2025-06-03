scoreboard players operation #magicSearch magic.id = @s magic.id

scoreboard players set #magicRange magic.temp 20
execute anchored eyes positioned ^ ^ ^ anchored feet run function magic:spells/12/raycast

execute as @e[type=marker,tag=batSwarmLead,predicate=magic:match_id] at @s run function magic:spells/12/lead_main