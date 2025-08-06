tag @s add inDodge
scoreboard players set @s magic.iframe 6
execute on passengers if entity @s[tag=aj.mage_hunter.root] run return run function animated_java:mage_hunter/animations/dodge_back/tween {to_frame:2,duration:5}