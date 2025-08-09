execute on passengers if entity @s[tag=aj.raptor.root] run function animated_java:raptor/remove/this
data remove entity @s Owner
tp @s 0 -64 0
kill @s
tag @n[type=#magic:magic_user,predicate=magic:match_id] remove magic.hasRaptor