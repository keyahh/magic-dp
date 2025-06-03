scoreboard players remove #magicRange magic.temp 1

scoreboard players set #floorRange magic.temp 10
function magic:spells/16/find_floor

execute if score #magicRange magic.temp matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ #magic:passable run function magic:spells/16/raycast