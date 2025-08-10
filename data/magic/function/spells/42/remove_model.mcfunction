#ran by model
scoreboard players operation #magicSearch magic.id = @s magic.id
#particle cloud ~ ~ ~ 0.1 0.1 0.1 0.1 8
execute as @n[type=wolf,tag=raptorWolf,predicate=magic:match_id] run function magic:spells/42/remove_wolf
tag @n[type=#magic:magic_user,predicate=magic:match_id] remove magic.hasRaptor
function animated_java:raptor/remove/this