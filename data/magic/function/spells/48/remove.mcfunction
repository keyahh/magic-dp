#run as base

execute on passengers if entity @s[tag=aj.ghost_knight.root] run function animated_java:ghost_knight/remove/this
execute on passengers run data remove entity @s Owner
execute on passengers run kill @s
kill @s