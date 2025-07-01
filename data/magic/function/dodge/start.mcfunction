tag @s add thisPlayer
execute unless block ~ ~-0.5 ~ #magic:passable run scoreboard players set $strength player_motion.api.launch 15000
execute if block ~ ~-0.5 ~ #magic:passable run scoreboard players set $strength player_motion.api.launch 6000

execute if predicate magic:input/backward rotated ~ 0 facing ^ ^ ^-1 run function player_motion:api/launch_looking
execute if predicate magic:input/forward rotated ~ 0 facing ^ ^ ^1 run function player_motion:api/launch_looking
execute if predicate magic:input/left rotated ~ 0 facing ^1 ^ ^ run function player_motion:api/launch_looking
execute if predicate magic:input/right rotated ~ 0 facing ^-1 ^ ^ run function player_motion:api/launch_looking

tag @s remove thisPlayer