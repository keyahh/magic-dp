scoreboard players operation #magicSearch magic.id = @s magic.id

tag @s add thisRaptor
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#magic:targets,predicate=!magic:match_id,dx=0,dy=0,dz=0] unless score @s magic.iframe matches 1.. run damage @s 25 player_attack by @n[type=cow,tag=thisRaptor]
tag @s remove thisRaptor

#tag @s add inAtk
#execute on passengers if entity @s[tag=aj.raptor.root] run function animated_java:raptor/animations/attack/tween {to_frame:0,duration:1}