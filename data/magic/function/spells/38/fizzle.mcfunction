scoreboard players operation @s magic.spellID = #spellID magic.spellID
execute as @e[type=item_display,tag=aj.ruin_star.root,predicate=magic:match_spell] run function animated_java:ruin_star/remove/this
kill @s