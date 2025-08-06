tellraw @a "stop moving"
scoreboard players operation #magicSearch magic.id = @s magic.id

execute on passengers if entity @s[tag=aj.mage_hunter.root] run function animated_java:mage_hunter/animations/still/play

tag @s remove moving