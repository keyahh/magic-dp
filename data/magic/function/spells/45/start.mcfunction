scoreboard players operation #magicSearch magic.id = @s magic.id

execute if entity @e[type=marker,tag=rendStartMark,predicate=magic:match_id] run return fail

function magic:spells/45/start_ray

advancement revoke @s only magic:spells/rend_tick
scoreboard players set @s magic.rendTime 4