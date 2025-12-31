particle flame ~ ~ ~ 0.2 0.2 0.2 0.02 1 force

#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run tp @s ~ ~ ~

#block collision
execute unless block ^ ^ ^0.15 #magic:passable run return run return run function magic:spells/49/land

$execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^0.15 positioned ~ ~$(grav) ~ run function magic:spells/49/slowcast with storage magic:slowcast