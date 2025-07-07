scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players operation @s magic.spellID = #spellID magic.spellID

execute store result score @s magic.temp run random value 0..1
execute store result score @s magic.dodgeCD run random value 0..1
execute store result score @s radius run random value 4
execute store result score @s maxRadius run random value 10..15
execute store result score @s theta run random value 0..3600
execute store result score @s phi run random value -750..750
execute store result score @s minPhi run random value -750..0
execute store result score @s maxPhi run random value 0..750

tag @s add magic
tag @s add soulOrb
tag @s add soulOrbParticle