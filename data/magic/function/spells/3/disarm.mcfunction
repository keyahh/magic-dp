scoreboard players reset #magicRange slowcast.itt

particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1 force
damage @s 1 player_attack by @p[tag=thisPlayer]
scoreboard players add @s magic.stagger 30

execute if items entity @s[tag=!boss] weapon.mainhand * run function magic:spells/3/summon_item

execute as @n[distance=..5,type=marker,tag=thisSpell] at @s run function magic:spells/3/fizzle
