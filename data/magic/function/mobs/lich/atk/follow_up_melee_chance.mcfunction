#ran by lich model

execute store result score #rng magic.temp run random value 0..2
execute if score #rng magic.temp matches 0..1 run return -1

scoreboard players operation #magicSearch magic.id = @s magic.id
tag @n[type=wither_skeleton,predicate=magic:match_id,distance=..5] add inAtk
scoreboard players set @n[type=wither_skeleton,predicate=magic:match_id,distance=..5] magic.atkCD 50
function animated_java:lich/animations/slam/play