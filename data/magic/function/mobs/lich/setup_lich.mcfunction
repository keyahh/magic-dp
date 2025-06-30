execute at @s run function magic:mobs/lich/summon_base
scoreboard players operation @s magic.id = #magicGlobalID magic.id
function animated_java:lich/animations/still/play
