scoreboard players reset @s magic.temp

#new direction
tag @s remove left
tag @s remove right

execute store result score #rng magic.temp run random value 0..4
execute if score #rng magic.temp matches 1..2 run tag @s add left
execute if score #rng magic.temp matches 3..4 run tag @s add right


#flapping
execute store result score #rng magic.temp run random value 0..1
execute if score #rng magic.temp matches 0 if entity @s[tag=!inDive,tag=!inRise] on passengers if entity @s[tag=aj.raptor.root,tag=!aj.raptor.animation.flap.playing] run function animated_java:raptor/animations/flap/tween {to_frame:0,duration:2}

#owner
scoreboard players operation #magicSearch magic.id = @s magic.id

execute unless entity @n[type=#magic:magic_user,predicate=magic:match_id,distance=..42] run tag @s remove left
execute unless entity @n[type=#magic:magic_user,predicate=magic:match_id,distance=..42] run tag @s remove right

execute if entity @s[tag=!inDive,tag=!inRise] at @n[type=#magic:magic_user,predicate=magic:match_id] positioned over world_surface positioned ~ ~12 ~ unless entity @s[distance=..24] positioned as @s facing entity @n[type=#magic:magic_user,predicate=magic:match_id] feet run rotate @s ~ 0

#attack
execute unless score @s magic.atkCD matches 1.. run function magic:spells/42/find_target