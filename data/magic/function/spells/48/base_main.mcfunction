scoreboard players operation #magicSearch magic.id = @s magic.id
execute rotated ~ 0 on passengers if entity @s[tag=aj.ghost_knight.root] run rotate @s ~ ~
execute if entity @s[predicate=magic:moving,tag=!inAtk,tag=!inBlock,tag=!inSpawn,tag=!inMove] run function magic:spells/48/move/move
execute if entity @s[predicate=!magic:moving,tag=inMove] run function magic:spells/48/move/stop_move
execute as @s[tag=!inAtk,tag=!inSpawn,tag=!inBlock,tag=!inMove,tag=!inIdle] at @s run function magic:spells/48/neutral/idle

#remove self aggro
tag @s add thisBase
execute on passengers if entity @s[tag=ghostKnightWolf] on target if entity @s[tag=thisBase] on passengers if entity @s[tag=ghostKnightWolf] run data remove entity @s angry_at
tag @s remove thisBase

#aggro
execute as @s[tag=!inSpawn,tag=!inBlock] on passengers if entity @s[tag=ghostKnightWolf] if data entity @s angry_at on vehicle run return run function magic:spells/48/aggro/wolf_aggro_main
execute as @s[tag=!inSpawn,tag=!inBlock] at @n[type=#magic:magic_user,predicate=magic:match_id] if entity @e[distance=..9,type=#magic:priority1,predicate=!magic:match_id] run return run function magic:spells/48/aggro/aggro_main