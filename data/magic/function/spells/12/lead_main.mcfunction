scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players operation #magicSearch magic.spellID = @s magic.spellID
execute if score @s magic.uuid matches -2147483648.. run scoreboard players operation #magicSearch magic.uuid = @s magic.uuid

scoreboard players set #hasTarget magic.temp 0
execute if score #magicSearch magic.uuid matches -2147483648.. store result score #hasTarget magic.temp if entity @e[distance=..40,type=#magic:targets,predicate=magic:match_uuid]
execute if score #hasTarget magic.temp matches 0 rotated as @n[type=#magic:magic_user,predicate=magic:match_id] run rotate @s ~ ~
execute if score #hasTarget magic.temp matches 1 run rotate @s facing entity @n[distance=..40,type=#magic:targets,predicate=magic:match_uuid] eyes
execute if block ^ ^ ^0.6 #magic:passable run tp @s ^ ^ ^0.6
execute unless block ^ ^ ^0.6 #magic:passable if score #hasTarget magic.temp matches 1 run tp @s ^ ^ ^0.6

scoreboard players reset #hasTarget magic.temp

scoreboard players add @s magic.batTime 1

#damage
scoreboard players add @s magic.temp 1
execute if score @s magic.temp matches 20.. run function magic:spells/12/attack

#bats
execute as @e[type=bat,tag=batSwarm,predicate=magic:match_spell,distance=..15] at @s run function magic:spells/12/bat_main
execute if score @s magic.batTime matches 240.. run return run function magic:spells/12/remove
execute unless entity @e[type=bat,tag=batSwarm,predicate=magic:match_spell,distance=..15] run function magic:spells/12/remove

schedule function magic:spells/12/loop 1t append