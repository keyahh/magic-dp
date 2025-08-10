scoreboard players operation #magicSearch magic.id = @s magic.id
particle cloud ~ ~ ~ 0.1 0.1 0.1 0.1 8
tp @s 0 -64 0

execute on passengers if entity @s[tag=aj.raptor.root] run function animated_java:raptor/remove/this
execute on passengers if entity @s[tag=raptorWolf] run function magic:spells/42/remove_wolf

kill @s
tag @n[type=#magic:magic_user,predicate=magic:match_id] remove magic.hasRaptor