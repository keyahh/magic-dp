scoreboard players operation #magicSearch magic.id = @s magic.id

#duration
scoreboard players add @s magic.health 1
execute if score @s magic.health matches 1200.. run function magic:spells/42/despawn_raptor

#update
execute on passengers if entity @s[tag=aj.raptor.root] run rotate @s ~ 0
scoreboard players add @s magic.temp 1
execute if score @s magic.temp matches 20.. run function magic:spells/42/update_raptor

#elevation control
execute if entity @s[tag=!inDive] positioned over world_surface positioned ~ ~12 ~ if entity @s[distance=3..] positioned over world_surface positioned ~ ~6 ~ if entity @s[distance=..6] at @s if block ~ ~1 ~ #magic:passable if block ~ ~2 ~ #magic:passable run tp ~ ~0.1 ~
execute if entity @s[tag=inRise] positioned over world_surface positioned ~ ~12 ~ if entity @s[distance=3..] positioned over world_surface positioned ~ ~6 ~ if entity @s[distance=..6] at @s if block ~ ~1 ~ #magic:passable if block ~ ~2 ~ #magic:passable run tp ~ ~0.4 ~
execute if entity @s[tag=!inDive] positioned over world_surface positioned ~ ~12 ~ if entity @s[distance=3..] positioned over world_surface positioned ~ ~6 ~ unless entity @s[distance=..6] at @s if block ~ ~-1 ~ #magic:passable if block ~ ~-2 ~ #magic:passable run tp ~ ~-0.1 ~

execute if entity @s[tag=inRise] positioned over world_surface positioned ~ ~12 ~ if entity @s[distance=..3] run function magic:spells/42/idle

#rotation
execute if entity @s[tag=left,tag=!inDive,tag=!inAtk] run rotate @s ~-2 ~
execute if entity @s[tag=right,tag=!inDive,tag=!inAtk] run rotate @s ~2 ~
execute at @s unless block ^ ^ ^1 #magic:passable run rotate @s ~90 ~

#move
execute if entity @s[tag=!inDive,tag=!inRise] at @s run tp @s ^ ^ ^0.5

#attack
execute if score @s magic.atkCD matches 1.. run scoreboard players remove @s magic.atkCD 1
