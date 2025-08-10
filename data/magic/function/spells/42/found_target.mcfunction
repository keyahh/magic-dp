scoreboard players reset #range magic.temp

execute store result score @s magic.targetUUID run data get entity @e[type=#magic:targets,predicate=!magic:match_id,tag=raptorTarget,dx=0,dy=0,dz=0,limit=1] UUID[0]
execute as @e[type=#magic:targets,predicate=!magic:match_id,tag=raptorTarget,dx=0,dy=0,dz=0,limit=1] store result score @s magic.uuid run data get entity @s UUID[0]

#execute on passengers if entity @s[tag=raptorWolf] run data remove entity @s AngryAt

tag @s add prepDive
execute on passengers if entity @s[tag=aj.raptor.root] run function animated_java:raptor/animations/dive/tween {to_frame:0,duration:1}