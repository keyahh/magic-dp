scoreboard players operation #magicSearch magic.id = @s magic.id

summon marker ^ ^0.01 ^10 {Tags:["wormMark"]}
execute as @e[type=marker,tag=wormMark,limit=1,sort=arbitrary] at @s facing entity @e[type=#magic:priority1,predicate=!magic:match_id,tag=wormTarget,limit=1] feet run tp @s ^ ^1.8 ^1.6
tp @s ^ ^ ^1.4 facing entity @e[type=marker,tag=wormMark,limit=1,sort=arbitrary] feet
kill @e[type=marker,tag=wormMark]

execute if block ~ ~1.5 ~ #magic:passable run tag @s remove inLunge