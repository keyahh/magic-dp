scoreboard players reset #magicRange slowcast.itt

particle flash ~ ~ ~ 0 0 0 0 1 force
damage @s 3 player_attack by @p[tag=thisPlayer]

execute if items entity @s weapon.mainhand * run function magic:spells/3/summon_item

execute as @n[distance=..5,type=marker,tag=thisSpell] at @s run function magic:spells/3/fizzle
