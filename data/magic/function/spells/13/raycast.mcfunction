scoreboard players remove #magicRange magic.temp 1

execute unless block ~ ~ ~ #magic:passable run function magic:spells/13/set_mark

execute if score #magicRange magic.temp matches 1.. positioned ^ ^ ^1 run function magic:spells/13/raycast