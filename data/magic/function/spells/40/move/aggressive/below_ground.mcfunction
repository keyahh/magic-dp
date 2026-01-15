scoreboard players operation #magicSearch magic.id = @s magic.id

summon marker ^ ^0.01 ^10 {Tags:["wormMark"]}
execute as @e[type=marker,tag=wormMark,limit=1,sort=arbitrary] at @s facing entity @e[type=#magic:priority1,predicate=!magic:match_id,tag=wormTarget,limit=1] feet run tp @s ^ ^ ^4
tp @s ^ ^ ^1 facing entity @e[type=marker,tag=wormMark,limit=1,sort=arbitrary] feet
kill @e[distance=..20,type=marker,tag=wormMark]