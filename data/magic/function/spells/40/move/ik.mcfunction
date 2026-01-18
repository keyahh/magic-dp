function magic:spells/40/segment_main

execute if entity @s[tag=!wormHead] facing entity @s feet run tp @s ^ ^ ^1.85 facing ^ ^ ^-1
execute at @s on passengers if entity @s[type=snowball] on origin run function magic:spells/40/move/ik
#execute on passengers on origin at @s on passengers on passengers on origin run tp @s ^ ^ ^1.875