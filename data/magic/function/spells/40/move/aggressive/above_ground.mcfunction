summon marker ^ ^0.01 ^10 {Tags:["wormMark"]}
execute as @e[type=marker,tag=wormMark,limit=1,sort=arbitrary] at @s run tp @s ~ ~-1 ~
tp @s ^ ^ ^1.2 facing entity @e[type=marker,tag=wormMark,limit=1,sort=arbitrary] feet
kill @e[distance=..20,type=marker,tag=wormMark]