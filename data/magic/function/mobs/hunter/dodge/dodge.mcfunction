tag @s add inDodge
scoreboard players set @s magic.iframe 6

execute store result score #rng magic.temp run random value 1..2

scoreboard players set #magicMotion magic.temp 3
execute if score #rng magic.temp matches 1 rotated ~ 0 run function magic:mobs/hunter/dodge/left
execute if score #rng magic.temp matches 2 rotated ~ 0 run function magic:mobs/hunter/dodge/right