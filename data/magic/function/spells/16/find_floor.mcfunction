scoreboard players remove #floorRange magic.temp 1

execute unless block ~ ~ ~ #magic:cannot_lift run function magic:spells/16/get_block

execute if score #floorRange magic.temp matches 1.. if block ~ ~ ~ #magic:cannot_lift positioned ~ ~-1 ~ run function magic:spells/16/find_floor