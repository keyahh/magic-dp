tag @s add eqGround
tag @s add magic

scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players operation @s magic.spellID = #magicSearch magic.spellID

setblock ~ ~ ~ air
$data merge entity @s {block_state:{Name:"$(block)"}}

#positive magic.temp = wait, negative = transform
execute store result score @s magic.temp run random value 1..6

#random max y transform value
execute store result score @s y run random value 25..75