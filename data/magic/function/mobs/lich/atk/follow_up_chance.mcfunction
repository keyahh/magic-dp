#ran by lich model

execute store result score #rng magic.temp run random value 0..2
execute if score #rng magic.temp matches 1..2 run return -1

#scoreboard players operation #magicSearch magic.id = @s magic.id
#tag @n[type=wither_skeleton,predicate=magic:match_id,distance=..5] add inAtk
#scoreboard players set @n[type=wither_skeleton,predicate=magic:match_id,distance=..5] magic.atkCD 40

execute on vehicle run tag @s add inAtk
execute on vehicle run scoreboard players set @s magic.atkCD 40

function animated_java:lich/animations/cast3/play