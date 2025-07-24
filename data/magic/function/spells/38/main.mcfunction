particle squid_ink ~ ~ ~ 0.5 0.5 0.5 0.2 1 force
scoreboard players add @s magic.temp 1
scoreboard players operation #magicSearch magic.spellID = @s magic.spellID

execute as @e[type=item_display,tag=aj.ruin_star.root,predicate=magic:match_spell,scores={magic.temp=120..},distance=..2.6] run function animated_java:ruin_star/remove/this
scoreboard players set @e[type=item_display,tag=aj.ruin_star.root,predicate=magic:match_spell,distance=20..] magic.atkCD 50

execute if score @s magic.temp matches 420.. run function magic:spells/38/fizzle

execute if score @s magic.wCD matches ..2 run function magic:spells/38/summon_loop

schedule function magic:spells/38/loop 1t append