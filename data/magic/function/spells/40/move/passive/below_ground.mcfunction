scoreboard players operation #magicSearch magic.id = @s magic.id

summon marker ^ ^0.01 ^10 {Tags:["wormMark"]}
$execute as @e[type=marker,tag=wormMark,limit=1,sort=arbitrary] at @s facing entity @e[type=#magic:magic_user,predicate=magic:match_id,limit=1] feet facing ^$(offset) ^ ^ run tp @s ^ ^ ^1
tp @s ^ ^ ^1 facing entity @e[type=marker,tag=wormMark,limit=1,sort=arbitrary] feet
kill @e[type=marker,tag=wormMark]