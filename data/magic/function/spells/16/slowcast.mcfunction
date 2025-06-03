#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run tp @s ~ ~ ~

#find blocks
execute unless block ~ ~ ~ #magic:passable run kill @s

scoreboard players set #floorRange magic.temp 10
execute align xyz run function magic:spells/16/find_floor
scoreboard players set #floorRange magic.temp 10
execute positioned ^1 ^ ^ if block ~ ~ ~ #magic:passable align xyz run function magic:spells/16/find_floor
scoreboard players set #floorRange magic.temp 10
execute positioned ^-1 ^ ^ if block ~ ~ ~ #magic:passable align xyz run function magic:spells/16/find_floor

#recurse
execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^1 run function magic:spells/16/slowcast