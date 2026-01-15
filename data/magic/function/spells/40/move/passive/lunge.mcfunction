scoreboard players operation #magicSearch magic.id = @s magic.id

summon marker ^ ^0.01 ^10 {Tags:["wormMark"]}
execute as @e[type=marker,tag=wormMark,limit=1,sort=arbitrary] at @s facing entity @e[type=#magic:magic_user,predicate=magic:match_id,limit=1] eyes run tp @s ^ ^1.8 ^1.6
tp @s ^ ^ ^1.3 facing entity @e[type=marker,tag=wormMark,limit=1,sort=arbitrary] feet
kill @e[type=marker,tag=wormMark]

execute if block ~ ~1.5 ~ #magic:passable run tag @s remove inLunge