scoreboard players add @s magic.temp 1
execute if score @s magic.temp matches 100.. run function magic:spells/5/fizzle

execute if block ^ ^ ^0.25 #magic:passable run tp @s ^ ^ ^0.25
execute unless block ^ ^ ^0.25 #magic:passable run function magic:spells/5/fizzle

particle dust{color:[0.969,1.000,0.702],scale:1.3} ~ ~ ~ 0 0 0 1 5 normal

execute unless score @s slowcast.itt matches 1.. run function magic:spells/5/set_light

schedule function magic:spells/5/loop 1t append