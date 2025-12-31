scoreboard players add @s magic.rendTime 1

scoreboard players operation #magicSearch magic.id = @s magic.id
tag @p[predicate=magic:match_id] add thisPlayer
execute positioned ^ ^ ^ run function magic:spells/45/hitbox
execute positioned ^ ^ ^1 run function magic:spells/45/hitbox
execute positioned ^ ^ ^2 run function magic:spells/45/hitbox
execute positioned ^ ^ ^3 run function magic:spells/45/hitbox
execute positioned ^ ^ ^4 run function magic:spells/45/hitbox
execute positioned ^ ^ ^-1 run function magic:spells/45/hitbox
execute positioned ^ ^ ^-2 run function magic:spells/45/hitbox
execute positioned ^ ^ ^-3 run function magic:spells/45/hitbox
execute positioned ^ ^ ^-4 run function magic:spells/45/hitbox
tag @p[predicate=magic:match_id] remove thisPlayer

execute if score @s magic.rendTime matches 2 run function magic:spells/45/transform
execute if score @s magic.rendTime matches 5 run function magic:spells/45/transform1

execute unless score @s magic.rendTime matches 12.. run tp @s ^ ^ ^0.5

execute if score @s magic.rendTime matches 13.. run function magic:spells/45/clear

schedule function magic:spells/45/loop 1t append