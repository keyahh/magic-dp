execute at @s run function magic:mobs/hunter/summon_base
scoreboard players operation @s magic.id = #magicGlobalID magic.id
function animated_java:mage_hunter/animations/still/play
